import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Word } from './word';

@Injectable({
    providedIn: 'root',
})
export class WordService {
    constructor(private http: HttpClient) { }

    getWords(collection: string): Observable<Word[]> {
        return this.http.get<Word[]>('api/words/', { params: { collection } });
    }
}
