import { SelectionModel } from '@angular/cdk/collections';
import { Component } from '@angular/core';
import { MatTableDataSource } from '@angular/material/table';
import { random, sampleSize, shuffle } from 'lodash-es';
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
    displayedColumns = ['pinyin', 'en'];
    currentQuestion = -1;
    correctCount = 0;
    showingAnswers = false;

    constructor(wordService: WordService) {
        wordService.getWords(['Lesson 1']).subscribe(words => {
            this.answers = shuffle(words);
            this.nextQuestion();
        });
        this.selection.changed.subscribe(change => {
            if (change.added.length === 0) {
                return;
            }
            const word = change.added[0];
            const utterance = new SpeechSynthesisUtterance(word.zh);
            utterance.lang = 'zh';
            window.speechSynthesis.speak(utterance);
        });
    }

    makeAnswer(): void {
        const correct = this.selection.isSelected(this.answers[this.currentQuestion]);
        if (correct) {
            ++this.correctCount;
        }
        this.showingAnswers = true;
    }

    isContinueEnabled(): boolean {
        if (this.showingAnswers) {
            return this.currentQuestion + 1 < this.answers.length;
        } else {
            return this.selection.hasValue();
        }
    }

    clickRow(row: Word): void {
        if (!this.showingAnswers) {
            this.selection.toggle(row);
        }
    }

    nextQuestion(): void {
        ++this.currentQuestion;
        const options = sampleSize(this.answers, numChoices);
        if (!options.includes(this.answers[this.currentQuestion])) {
            options[random(0, options.length - 1)] = this.answers[this.currentQuestion];
        }
        this.selection.clear();
        this.dataSource.data = options;
        this.showingAnswers = false;
    }
}
