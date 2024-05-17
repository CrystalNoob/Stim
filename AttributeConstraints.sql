-- Diskon pada Aplikasi
ALTER TABLE aplikasi
		ADD CONSTRAINT CHECK (discount >= 0 AND discount <= 100);

-- Rating
ALTER TABLE aplikasi_user
		ADD CONSTRAINT CHECK (rating >= 0 AND rating <= 5);

-- Harga
ALTER TABLE aplikasi
		ADD CONSTRAINT CHECK (harga >= 0);

ALTER TABLE dlc
		ADD CONSTRAINT CHECK (harga >= 100);
