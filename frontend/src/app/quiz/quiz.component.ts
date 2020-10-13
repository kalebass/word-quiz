import { Component, OnInit } from '@angular/core';
import { Word } from '../word';
import { WordService } from '../word.service';

@Component({
    selector: 'app-quiz',
    templateUrl: './quiz.component.html',
    styleUrls: ['./quiz.component.css'],
})
export class QuizComponent implements OnInit {
    words: Word[] = [];

    constructor(wordService: WordService) {
        wordService.getWords('Lesson 1').subscribe(words => this.words = words);
    }

    ngOnInit(): void {
    }
}
