-- C. User Forum Possession
-- post --
-- hilangkan constraint yang lama --
ALTER TABLE post 
	DROP CONSTRAINT post_ibfk_1, 
	DROP CONSTRAINT post_ibfk_2;

ALTER TABLE post 
	ADD CONSTRAINT FOREIGN KEY(`email_pembuat`) REFERENCES `user`(`email`) ON DELETE CASCADE ON UPDATE CASCADE,
	ADD CONSTRAINT FOREIGN KEY(`id_forum`) REFERENCES `forum`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

DELETE FROM forum
WHERE id in (SELECT f.id
	FROM forum as f
	JOIN aplikasi as a ON f.id_aplikasi = a.id
WHERE a.id NOT IN 
	(SELECT au.id_aplikasi 
	FROM aplikasi_user as au 
 		JOIN user as u ON au.email_user = u.email));

-- forum -- 
-- cari data constraint yang lama -- 
ALTER table forum
   DROP CONSTRAINT forum_ibfk_1,
   DROP CONSTRAINT forum_ibfk_2;

-- tambah constraint yang sesuai -- 
ALTER table forum 
	ADD CONSTRAINT FOREIGN KEY (`email_user`) REFERENCES `aplikasi_user` (`email_user`) ON DELETE CASCADE ON UPDATE CASCADE,
	ADD CONSTRAINT FOREIGN KEY (`id_aplikasi`) REFERENCES `aplikasi_user` (`id_aplikasi`) ON DELETE CASCADE ON UPDATE CASCADE;

-- A. Email Validation
UPDATE `user`
SET email = CONCAT(SUBSTRING_INDEX(email, '.', 1), '.com')
WHERE email NOT LIKE '%.com';

ALTER TABLE developer
	ADD CONSTRAINT CHECK (email REGEXP '.*@.*\\.com$');

ALTER TABLE user
	ADD CONSTRAINT CHECK (email REGEXP '.*@.*\\.com$');

-- B. The Achievers
CREATE VIEW Top10DistinctUserAchievements AS
WITH TopUsers AS (
	SELECT
		u.username,
		SUM(au.jumlah_achievement_tercapai) as total_achievement
	FROM aplikasi_user AS au
	JOIN user AS u ON au.email_user = u.email
	GROUP BY u.username
	ORDER BY total_achievement DESC
	LIMIT 10
)
SELECT
	tu.username,
	a.judul,
	au.jumlah_achievement_tercapai,
	au.total_waktu_pemakaian
FROM TopUsers AS tu
JOIN aplikasi_user AS au ON au.email_user = (SELECT email FROM user WHERE username = tu.username LIMIT 1)
JOIN user AS u ON au.email_user = u.email
JOIN aplikasi AS a ON au.id_aplikasi = a.id
ORDER BY tu.total_achievement DESC;

-- cara menggunakan view 
-- SELECT * FROM Top10DistinctUserAchievements;

-- D. Application Rating
CREATE table app_rating AS
SELECT id_aplikasi, judul, ROUND(AVG(rating),1) AS rating
FROM aplikasi_user, aplikasi
WHERE id_aplikasi = id
GROUP BY id_aplikasi;

CREATE TRIGGER update_rating
AFTER UPDATE ON aplikasi_user
FOR EACH ROW
	INSERT INTO app_rating (id, judul, rating)
	SELECT id_aplikasi, judul, ROUND(AVG(rating),1)   AS rating
	FROM aplikasi_user, aplikasi
	WHERE id_aplikasi = id
	GROUP BY id_aplikasi
ON DUPLICATE KEY UPDATE
	rating = (SELECT AVG(rating) AS rating
	FROM aplikasi_user, aplikasi
	WHERE id_aplikasi = id
	GROUP BY id_aplikasi);

CREATE TRIGGER insert_rating
AFTER INSERT ON aplikasi_user
FOR EACH ROW
	INSERT INTO app_rating (id, judul, rating)
	SELECT id_aplikasi, judul, ROUND(AVG(rating),1)   AS rating
	FROM aplikasi_user, aplikasi
	WHERE id_aplikasi = id
	GROUP BY id_aplikasi
ON DUPLICATE KEY UPDATE
	rating = (SELECT AVG(rating) AS rating
	FROM aplikasi_user, aplikasi
	WHERE id_aplikasi = id
	GROUP BY id_aplikasi);

CREATE TRIGGER delete_rating
AFTER DELETE ON aplikasi_user
FOR EACH ROW
	INSERT INTO app_rating (id, judul, rating)
	SELECT id_aplikasi, judul, ROUND(AVG(rating),1)   AS rating
	FROM aplikasi_user, aplikasi
	WHERE id_aplikasi = id
	GROUP BY id_aplikasi
ON DUPLICATE KEY UPDATE
	rating = (SELECT AVG(rating) AS rating
	FROM aplikasi_user, aplikasi
	WHERE id_aplikasi = id
	GROUP BY id_aplikasi);

-- E. Attracting Customer
UPDATE dlc, aplikasi SET dlc.harga = aplikasi.harga WHERE dlc.id_video_game = aplikasi.id AND dlc.harga > aplikasi.harga;

CREATE TRIGGER harga_dlc_insert BEFORE
INSERT ON dlc
	FOR EACH ROW
	UPDATE aplikasi
	SET NEW.harga = aplikasi.harga
	WHERE NEW.id_video_game = aplikasi.id AND NEW.harga > aplikasi.harga;

CREATE TRIGGER harga_dlc_update BEFORE
UPDATE ON dlc    	 
	FOR EACH ROW
	UPDATE aplikasi
	SET NEW.harga = aplikasi.harga
	WHERE NEW.id_video_game = aplikasi.id AND NEW.harga > aplikasi.harga;
