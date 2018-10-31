import { Injectable } from '@angular/core';
import { Http, RequestOptions, Headers } from '@angular/http';



@Injectable({
  providedIn: 'root'
})
export class HomeService {
  headers: any;
  options: any;
  private listadodeusuarios = 'http://localhost:3000/genders.json';
  constructor(public http: Http) {
  }
  getListadoUsuarios() {
    const response = this.http.get(this.listadodeusuarios);
    return response;
  }

}
