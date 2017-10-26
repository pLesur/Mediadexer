CREATE TABLE categories (
	id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        name VARCHAR(20) UNIQUE NOT NULL
);

CREATE TABLE files (
	id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        name VARCHAR(30) UNIQUE NOT NULL
);

CREATE TABLE file_categories (
    category_id INTEGER NOT NULL,
    file_id INTEGER NOT NULL,
    FOREIGN KEY(category_id) REFERENCES categories(id),
    FOREIGN KEY(file_id) REFERENCES files(id)
);
