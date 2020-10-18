package se.arvidaxelsson.word_quiz.service;

import org.jooq.DSLContext;
import org.springframework.stereotype.Service;
import se.arvidaxelsson.word_quiz.jooq.Tables;
import se.arvidaxelsson.word_quiz.model.Word;

import java.util.Collection;

@Service
public class WordService {
    private final DSLContext create;

    public WordService(DSLContext create) {
        this.create = create;
    }

    public Collection<Word> getWordsInCollections(Collection<String> collections) {
        return create
                .select(Tables.WORD.ZH, Tables.WORD.EN, Tables.WORD.PINYIN)
                .from(Tables.WORD)
                .naturalJoin(Tables.WORD_COLLECTION)
                .naturalJoin(Tables.COLLECTION)
                .where(Tables.COLLECTION.COLLECTION_NAME.in(collections))
                .fetchInto(Word.class);
    }

    public Collection<Word> getAllWords() {
        return create
                .select(Tables.WORD.ZH, Tables.WORD.EN, Tables.WORD.PINYIN)
                .from(Tables.WORD)
                .fetchInto(Word.class);
    }
}
