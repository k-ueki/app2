
-- +goose Up
INSERT INTO books(
	title,
	author,
	price,
	img_url,
	isbn
) VALUES (
	"hogeho物語",
	"hoge座衛門",
	3000,
	"http://ahahaha.com",
	"1234567890"
);

-- +goose Down
