CREATE TABLE word (
    word_id SERIAL PRIMARY KEY,
    zh TEXT,
    pinyin TEXT,
    en TEXT
);

CREATE TABLE collection (
    collection_name TEXT PRIMARY KEY
);

CREATE TABLE word_collection (
    collection_name TEXT REFERENCES collection,
    word_id INTEGER REFERENCES word
);

INSERT INTO word (word_id, zh, pinyin, en) VALUES (1, '你', 'nǐ', 'you');
INSERT INTO word (word_id, zh, pinyin, en) VALUES (2, '好', 'hǎo', 'good');
INSERT INTO word (word_id, zh, pinyin, en) VALUES (3, '吗', 'ma', '(particle for yes-no question)');
INSERT INTO word (word_id, zh, pinyin, en) VALUES (4, '我', 'wǒ', 'I; me');
INSERT INTO word (word_id, zh, pinyin, en) VALUES (5, '很', 'hěn', 'very');
INSERT INTO word (word_id, zh, pinyin, en) VALUES (6, '呢', 'ne', '(modal particle for elliptical questions)');
INSERT INTO word (word_id, zh, pinyin, en) VALUES (7, '也', 'yě', 'too; also');
INSERT INTO collection (collection_name) VALUES ('Lesson 1');
INSERT INTO word_collection (collection_name, word_id) VALUES ('Lesson 1', 1);
INSERT INTO word_collection (collection_name, word_id) VALUES ('Lesson 1', 2);
INSERT INTO word_collection (collection_name, word_id) VALUES ('Lesson 1', 3);
INSERT INTO word_collection (collection_name, word_id) VALUES ('Lesson 1', 4);
INSERT INTO word_collection (collection_name, word_id) VALUES ('Lesson 1', 5);
INSERT INTO word_collection (collection_name, word_id) VALUES ('Lesson 1', 6);
INSERT INTO word_collection (collection_name, word_id) VALUES ('Lesson 1', 7);
