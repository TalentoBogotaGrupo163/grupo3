import { Injectable } from '@angular/core';
import { Http, RequestOptions, Headers } from '@angular/http';
import { map, take } from 'rxjs/operators';

@Injectable()
export class EstudiantesService {
  private consultarestudiantes = 'compras/';
  private crearnuevoestudiante = 'compras/';
  private modificarestudiante = 'compras/';
  private eliminarestudiante = 'compras/';
  private listarestudiantes = 'http://localhost:3000/people';
  public options: any;
  public headers: any;
  constructor(public http: Http) {
    this.headers = new Headers({
      'Content-Type': 'application/json'
  });
    this.options = new RequestOptions({ headers: this.headers });
}

  getListadoEstudiantes() {
    const response = this.http.get(this.listarestudiantes, this.options).pipe(map(res => res.json()));
    return response;
}

}
