SELECT id,name,photo_url FROM users WHERE firebase_uid="hoge"

SELECT 
	books.id,
	books.title,
	books.author,
	books.price,
	books.img_url,
	books.page_url
FROM books
INNER JOIN user_book
ON user_book.book_id=books.id
WHERE user_book.user_id=1

SELECT 
	communities.id,
	communities.name
FROM communities
INNER JOIN user_community
ON user_community.community_id=communities.id
INNER JOIN users
ON user_community.user_id=users.id
WHERE users.firebase_uid="hoge"
