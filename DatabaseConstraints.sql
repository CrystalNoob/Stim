-- Waktu Pembuatan Post
UPDATE post, forum
  SET post.waktu_pembuatan = forum.waktu_pembuatan
  WHERE post.id_forum = forum.id AND post.waktu_pembuatan < forum.waktu_pembuatan;

DELIMITER //
CREATE TRIGGER waktu_post_insert BEFORE INSERT ON post
FOR EACH ROW
BEGIN
IF EXISTS (
  SELECT * FROM forum WHERE NEW.id_forum =
  forum.id AND NEW.waktu_pembuatan < forum.waktu_pembuatan
)
THEN
  SIGNAL SQLSTATE '45000'
  SET MESSAGE_TEXT = 'Waktu pembuatan post tidak boleh sebelum waktu pembuatan forum';
END IF;
END; //
DELIMITER ;

DELIMITER //
CREATE TRIGGER waktu_post_update BEFORE UPDATE ON post
FOR EACH ROW
BEGIN
IF EXISTS (
  SELECT * FROM forum WHERE NEW.id_forum =
  forum.id AND NEW.waktu_pembuatan < forum.waktu_pembuatan
)
THEN
  SIGNAL SQLSTATE '45000'
  SET MESSAGE_TEXT = 'Waktu pembuatan post tidak boleh sebelum waktu pembuatan forum';
END IF;
END; //
DELIMITER ;

-- Jumlah Achievement Tercapai
UPDATE aplikasi_user, aplikasi
  SET aplikasi_user.jumlah_achievement_tercapai = aplikasi.jumlah_achievement
  WHERE aplikasi_user.id_aplikasi = aplikasi.id AND aplikasi_user.jumlah_achievement_tercapai > aplikasi.jumlah_achievement;

DELIMITER //
CREATE TRIGGER achievement_tercapai_insert BEFORE INSERT ON aplikasi_user
FOR EACH ROW
BEGIN
IF EXISTS (
  SELECT * FROM aplikasi WHERE NEW.id_aplikasi =
  aplikasi.id AND NEW.jumlah_achievement_tercapai > aplikasi.jumlah_achievement
)
THEN
  SIGNAL SQLSTATE '45000'
  SET MESSAGE_TEXT = 'Jumlah achievement yang dicapai tidak bisa lebih dari jumlah achievement total.';
END IF;
END; // 
DELIMITER ;

DELIMITER //
CREATE TRIGGER achievement_tercapai_update BEFORE UPDATE ON aplikasi_user
FOR EACH ROW
BEGIN
IF EXISTS (
  SELECT * FROM aplikasi WHERE NEW.id_aplikasi =
  aplikasi.id AND NEW.jumlah_achievement_tercapai > aplikasi.jumlah_achievement
)
THEN
  SIGNAL SQLSTATE '45000'
  SET MESSAGE_TEXT = 'Jumlah achievement yang dicapai tidak bisa lebih dari jumlah achievement total.';
END IF;
END; //
DELIMITER ;

-- Waktu Peluncuran Aplikasi
UPDATE aplikasi, developer
  SET aplikasi.tanggal_peluncuran = developer.tanggal_pendirian
  WHERE aplikasi.email_developer = developer.email AND aplikasi.tanggal_peluncuran < developer.tanggal_pendirian;

DELIMITER //
CREATE TRIGGER tanggal_aplikasi_insert BEFORE INSERT ON aplikasi
FOR EACH ROW
BEGIN
IF EXISTS (
  SELECT * FROM aplikasi WHERE NEW.email_developer =
  developer.email AND NEW.tanggal_peluncuran < developer.tanggal_pendirian
)
THEN
  SIGNAL SQLSTATE '45000'
  SET MESSAGE_TEXT = 'Tanggal peluncuran aplikasi tidak boleh sebelum tanggal pendirian developer.';
END IF;
END; //
DELIMITER ;

DELIMITER //
CREATE TRIGGER tanggal_aplikasi_update BEFORE UPDATE ON aplikasi
FOR EACH ROW
BEGIN
IF EXISTS (
  SELECT * FROM aplikasi WHERE NEW.email_developer =
  developer.email AND NEW.tanggal_peluncuran < developer.tanggal_pendirian
)
THEN
  SIGNAL SQLSTATE '45000'
  SET MESSAGE_TEXT = 'Tanggal peluncuran aplikasi tidak boleh sebelum tanggal pendirian developer.';
END IF;
END; //
DELIMITER ;
