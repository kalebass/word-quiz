import { HttpClientModule } from '@angular/common/http';
import { NgModule } from '@angular/core';
import { MatTableModule } from '@angular/material/table';
import { BrowserModule } from '@angular/platform-browser';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { AppComponent } from './app.component';
import { QuizComponent } from './quiz/quiz.component';

@NgModule({
    declarations: [
        AppComponent,
        QuizComponent,
    ],
    imports: [
        BrowserAnimationsModule,
        BrowserModule,
        HttpClientModule,
        MatTableModule,
    ],
    providers: [],
    bootstrap: [AppComponent],
})
export class AppModule { }
