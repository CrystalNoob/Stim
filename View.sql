-- The Achievers
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
SELECT * FROM Top10DistinctUserAchievements;
