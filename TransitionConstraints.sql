-- Status Pertemanan User
DELIMITER //
CREATE TRIGGER friend_status
AFTER UPDATE ON berteman
FOR EACH ROW
IF EXISTS (
	SELECT * FROM berteman
	WHERE OLD.email_user_1 = NEW.email_user_1 AND
		  OLD.email_user_2 = NEW.email_user_2 AND
		  OLD.status = 'ACCEPTED' AND NEW.status = 'PENDING'
)
THEN
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'Tidak bisa mengirimkan permintaan pertemanan pada user yang telah menjadi teman.';
END IF; //
DELIMITER ;

-- Jumlah Achievement yang Tercapai
DELIMITER //
CREATE TRIGGER achievement_validator
AFTER UPDATE ON aplikasi_user
FOR EACH ROW
IF EXISTS (
	SELECT * FROM aplikasi_user
	WHERE OLD.id_aplikasi = NEW.id_aplikasi AND
		  OLD.email_user =  NEW.email_user AND
		  OLD.jumlah_achievement_tercapai < NEW.jumlah_achievement_tercapai
)
THEN
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'Achievement yang didapatkan tidak boleh berkurang.';
END IF; //
DELIMITER ;
