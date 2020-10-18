package se.arvidaxelsson.word_quiz.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import se.arvidaxelsson.word_quiz.model.Word;
import se.arvidaxelsson.word_quiz.service.WordService;

import java.util.Collection;

@RestController
public class WordController {
    private final WordService wordService;

    public WordController(WordService wordService) {
        this.wordService = wordService;
    }

    @GetMapping("api/words/")
    public Collection<Word> getWords(@RequestParam(required = false) Collection<String> collection) {
        if (collection == null) {
            return wordService.getAllWords();
        }
        return wordService.getWordsInCollections(collection);
    }
}
