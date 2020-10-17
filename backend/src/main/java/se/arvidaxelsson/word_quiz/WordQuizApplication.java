package se.arvidaxelsson.word_quiz;

import org.jooq.conf.Settings;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class WordQuizApplication {
    public static void main(String[] args) {
        SpringApplication.run(WordQuizApplication.class, args);
    }

    @Bean
    public Settings jooqSettings() {
        return new Settings().withMapConstructorParameterNames(true);
    }
}
