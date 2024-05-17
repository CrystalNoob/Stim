DROP DATABASE IF EXISTS `stim`;
CREATE DATABASE `stim`;
USE `stim`;

CREATE TABLE `developer` (
		`email` varchar(255) NOT NULL,
		`nama` varchar(255) DEFAULT NULL,
		`tanggal_pendirian` date NOT NULL,
		`deskripsi` text DEFAULT NULL,
		PRIMARY KEY (`email`)
);

CREATE TABLE `user` (
		`email` varchar(255) NOT NULL,
		`username` varchar(20) NOT NULL,
		`password` varchar(64) NOT NULL,
		`nama_depan` varchar(20) DEFAULT NULL,
		`nama_belakang` varchar(20) DEFAULT NULL,
		`tanggal_lahir` date NOT NULL,
		`level_akun` int(11) NOT NULL,
		PRIMARY KEY (`email`)
);

CREATE TABLE `berteman` (
		`email_user_1` varchar(255) NOT NULL,
		`email_user_2` varchar(255) NOT NULL,
		`status` enum('FRIENDS','PENDING','BLOCKED') NOT NULL,
		PRIMARY KEY (`email_user_1`,`email_user_2`),
		KEY `email_user_2` (`email_user_2`),
		CONSTRAINT `berteman_ibfk_1` FOREIGN KEY (`email_user_1`) REFERENCES `user` (`email`),
		CONSTRAINT `berteman_ibfk_2` FOREIGN KEY (`email_user_2`) REFERENCES `user` (`email`)
);

CREATE TABLE `aplikasi` (
		`id` int(11) NOT NULL AUTO_INCREMENT,
		`email_developer` varchar(255) NOT NULL,
		`judul` varchar(255) NOT NULL,
		`harga` int(11) DEFAULT 0,
		`tanggal_peluncuran` date NOT NULL,
		`ukuran` int(11) NOT NULL,
		`deskripsi` text DEFAULT NULL,
		`discount` tinyint(4) DEFAULT 0,
		`jumlah_achievement` int(11) DEFAULT NULL,
		PRIMARY KEY (`id`),
		KEY `developer` (`email_developer`),
		CONSTRAINT `developer` FOREIGN KEY (`email_developer`) REFERENCES `developer` (`email`)
);

CREATE TABLE `video_game` (
		`id` int(11) NOT NULL AUTO_INCREMENT,
		`genre` varchar(255) NOT NULL,
		PRIMARY KEY (`id`,`genre`),
		CONSTRAINT `video_game_ibfk_1` FOREIGN KEY (`id`) REFERENCES `aplikasi` (`id`)
);

CREATE TABLE `awards` (
		`kategori` varchar(255) NOT NULL,
		`tahun` smallint(6) NOT NULL,
		`id_game` int(11) NOT NULL,
		PRIMARY KEY (`kategori`,`tahun`),
		KEY `id_game` (`id_game`),
		CONSTRAINT `awards_ibfk_1` FOREIGN KEY (`id_game`) REFERENCES `video_game` (`id`)
);

CREATE TABLE `soundtrack` (
		`id` int(11) NOT NULL AUTO_INCREMENT,
		PRIMARY KEY (`id`),
		CONSTRAINT `soundtrack_ibfk_1` FOREIGN KEY (`id`) REFERENCES `aplikasi` (`id`)
);

CREATE TABLE `dlc` (
		`judul` varchar(255) NOT NULL,
		`id_video_game` int(11) NOT NULL AUTO_INCREMENT,
		`harga` int(11) NOT NULL DEFAULT 0,
		`tanggal_peluncuran` date NOT NULL,
		PRIMARY KEY (`judul`,`id_video_game`),
		KEY `id_video_game` (`id_video_game`),
		CONSTRAINT `dlc_ibfk_1` FOREIGN KEY (`id_video_game`) REFERENCES `video_game` (`id`)
);

CREATE TABLE `lagu` (
		`judul` varchar(255) NOT NULL,
		`id_aplikasi` int(11) NOT NULL AUTO_INCREMENT,
		`durasi` bigint(20) NOT NULL,
		PRIMARY KEY (`judul`,`id_aplikasi`),
		KEY `id_aplikasi` (`id_aplikasi`),
		CONSTRAINT `lagu_ibfk_1` FOREIGN KEY (`id_aplikasi`) REFERENCES `soundtrack` (`id`)
);

CREATE TABLE `aplikasi_user` (
		`id_aplikasi` int(11) NOT NULL AUTO_INCREMENT,
		`email_user` varchar(255) NOT NULL,
		`total_waktu_pemakaian` bigint(20) NOT NULL,
		`waktu_terakhir_pemakaian` datetime NOT NULL,
		`jumlah_achievement_tercapai` smallint(6) DEFAULT NULL,
		`rating` decimal(2,1) DEFAULT NULL,
		PRIMARY KEY (`id_aplikasi`,`email_user`),
		KEY `email_user` (`email_user`),
		CONSTRAINT `aplikasi_user_ibfk_1` FOREIGN KEY (`id_aplikasi`) REFERENCES `aplikasi` (`id`),
		CONSTRAINT `aplikasi_user_ibfk_2` FOREIGN KEY (`email_user`) REFERENCES `user` (`email`)
);

CREATE TABLE `forum` (
		`id` int(11) NOT NULL AUTO_INCREMENT,
		`email_user` varchar(255) NOT NULL,
		`id_aplikasi` int(11) NOT NULL,
		`judul` varchar(255) NOT NULL,
		`waktu_pembuatan` datetime NOT NULL,
		PRIMARY KEY (`id`),
		KEY `email_user` (`email_user`),
		KEY `id_aplikasi` (`id_aplikasi`),
		CONSTRAINT `forum_ibfk_1` FOREIGN KEY (`email_user`) REFERENCES `aplikasi_user` (`email_user`),
		CONSTRAINT `forum_ibfk_2` FOREIGN KEY (`id_aplikasi`) REFERENCES `aplikasi_user` (`id_aplikasi`)
);

CREATE TABLE `vote` (
		`email` varchar(255) NOT NULL,
		`id_forum` int(11) NOT NULL,
		`upvote_downvote` enum('UP','DOWN') NOT NULL,
		PRIMARY KEY (`email`,`id_forum`),
		KEY `id_forum` (`id_forum`),
		CONSTRAINT `vote_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user` (`email`),
		CONSTRAINT `vote_ibfk_2` FOREIGN KEY (`id_forum`) REFERENCES `forum` (`id`)
);

CREATE TABLE `mengikuti` (
		`email_dev` varchar(255) NOT NULL,
		`email_user` varchar(255) NOT NULL,
		PRIMARY KEY (`email_dev`,`email_user`),
		KEY `email_user` (`email_user`),
		CONSTRAINT `mengikuti_ibfk_1` FOREIGN KEY (`email_dev`) REFERENCES `developer` (`email`),
		CONSTRAINT `mengikuti_ibfk_2` FOREIGN KEY (`email_user`) REFERENCES `user` (`email`)
);

CREATE TABLE `post` (
		`id` int(11) NOT NULL AUTO_INCREMENT,
		`id_forum` int(11) NOT NULL,
		`email_pembuat` varchar(255) NOT NULL,
		`konten` text NOT NULL,
		`waktu_pembuatan` datetime NOT NULL,
		PRIMARY KEY (`id`,`id_forum`),
		KEY `email_pembuat` (`email_pembuat`),
		KEY `id_forum` (`id_forum`),
		CONSTRAINT `post_ibfk_1` FOREIGN KEY (`email_pembuat`) REFERENCES `user` (`email`),
		CONSTRAINT `post_ibfk_2` FOREIGN KEY (`id_forum`) REFERENCES `forum` (`id`)
);
