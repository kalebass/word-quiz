package se.arvidaxelsson.word_quiz.model;

import com.fasterxml.jackson.annotation.JsonProperty;

public record Word(
        @JsonProperty String zh,
        @JsonProperty String pinyin,
        @JsonProperty String en
) {
}
