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

INSERT INTO word (word_id, zh, pinyin, en) VALUES ( 8, '忙', 'máng', 'busy');
INSERT INTO word (word_id, zh, pinyin, en) VALUES ( 9, '爸爸', 'bàba', 'dad');
INSERT INTO word (word_id, zh, pinyin, en) VALUES (10, '妈妈', 'māma', 'mom');
INSERT INTO word (word_id, zh, pinyin, en) VALUES (11, '他们', 'tāmen', 'they; them');
INSERT INTO word (word_id, zh, pinyin, en) VALUES (12, '他', 'tā', 'he; him');
INSERT INTO word (word_id, zh, pinyin, en) VALUES (13, '都', 'dōu', 'both; all');
INSERT INTO word (word_id, zh, pinyin, en) VALUES (14, '不', 'bù', 'not; no');
INSERT INTO word (word_id, zh, pinyin, en) VALUES (15, '男', 'nán', 'male');
INSERT INTO word (word_id, zh, pinyin, en) VALUES (16, '朋友', 'péngyou', 'friend');
INSERT INTO word (word_id, zh, pinyin, en) VALUES (17, '哥哥', 'gēge', 'elder brother');
INSERT INTO word (word_id, zh, pinyin, en) VALUES (18, '要', 'yào', 'to want');
INSERT INTO word (word_id, zh, pinyin, en) VALUES (19, '咖啡', 'kāfēi', 'coffee');
INSERT INTO word (word_id, zh, pinyin, en) VALUES (20, '弟弟', 'dìdi', 'younger brother');
INSERT INTO word (word_id, zh, pinyin, en) VALUES (21, '我们', 'wǒmen', 'we; us');
INSERT INTO word (word_id, zh, pinyin, en) VALUES (22, '喝', 'hē', 'to drink');
INSERT INTO collection (collection_name) VALUES ('Lesson 2');
INSERT INTO word_collection (collection_name, word_id) VALUES ('Lesson 2',  8);
INSERT INTO word_collection (collection_name, word_id) VALUES ('Lesson 2',  9);
INSERT INTO word_collection (collection_name, word_id) VALUES ('Lesson 2', 10);
INSERT INTO word_collection (collection_name, word_id) VALUES ('Lesson 2', 11);
INSERT INTO word_collection (collection_name, word_id) VALUES ('Lesson 2', 12);
INSERT INTO word_collection (collection_name, word_id) VALUES ('Lesson 2', 13);
INSERT INTO word_collection (collection_name, word_id) VALUES ('Lesson 2', 14);
INSERT INTO word_collection (collection_name, word_id) VALUES ('Lesson 2', 15);
INSERT INTO word_collection (collection_name, word_id) VALUES ('Lesson 2', 16);
INSERT INTO word_collection (collection_name, word_id) VALUES ('Lesson 2', 17);
INSERT INTO word_collection (collection_name, word_id) VALUES ('Lesson 2', 18);
INSERT INTO word_collection (collection_name, word_id) VALUES ('Lesson 2', 19);
INSERT INTO word_collection (collection_name, word_id) VALUES ('Lesson 2', 20);
INSERT INTO word_collection (collection_name, word_id) VALUES ('Lesson 2', 21);
INSERT INTO word_collection (collection_name, word_id) VALUES ('Lesson 2', 22);
