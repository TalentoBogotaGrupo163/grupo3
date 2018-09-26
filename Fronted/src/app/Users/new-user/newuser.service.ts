import { Injectable } from '@angular/core';
import { Http, RequestOptions, Headers } from '@angular/http';
import 'rxjs/add/operator/map';
import 'rxjs/Rx';
import { Observable } from 'rxjs/Observable';

@Injectable({
  providedIn: 'root'
})
export class NewuserService {
  options: any;
  consumojson = '';
  constructor(public http: Http) {
    let headers = new Headers({
      'Content-Type': 'application/json',
    });
    this.options = new RequestOptions({ headers: headers });
  }
  getCompras() {
    const response = this.http.get(this.consumojson, this.options).map(res => res.json());
    return response;
  }
}
