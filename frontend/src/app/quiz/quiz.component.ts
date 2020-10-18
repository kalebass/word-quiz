import { SelectionModel } from '@angular/cdk/collections';
import { Component } from '@angular/core';
import { MatTableDataSource } from '@angular/material/table';
import { sampleSize, shuffle } from 'lodash-es';
import { Word } from '../word';
import { WordService } from '../word.service';

const numChoices = 7;

@Component({
    selector: 'app-quiz',
    templateUrl: './quiz.component.html',
    styleUrls: ['./quiz.component.css'],
})
export class QuizComponent {
    answers: Word[] = [];
    selection = new SelectionModel<Word>(false);
    dataSource = new MatTableDataSource<Word>();
    displayedColumns = ['zh', 'pinyin', 'en'];

    constructor(wordService: WordService) {
        wordService.getWords(['Lesson 1']).subscribe(words => {
            this.answers = shuffle(words);
            this.nextQuestion();
        });
    }

    nextQuestion(): void {
        this.dataSource.data = sampleSize(this.answers, numChoices);
    }
}
