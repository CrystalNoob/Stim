-- Unique
ALTER TABLE `user`
	ADD CONSTRAINT UNIQUE(username);

-- NULL Value
ALTER TABLE `awards`
	MODIFY `id_game` int(11) NULL;
