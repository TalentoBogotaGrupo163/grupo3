import { Component } from '@angular/core';
import { HomeService  } from './home.service';

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
  providers: [HomeService]
})
export class HomePage {
  DataArrayUsuarios: any = [];
  constructor(public homeService: HomeService) {
  }
  // tslint:disable-next-line:use-life-cycle-interface

  ionViewDidLoad() {
    this.homeService.getListadoUsuarios().subscribe(
      data => {
        this.DataArrayUsuarios = data;
        console.log("*******************************");
        console.log(this.DataArrayUsuarios);
      }
    );
    for (let i = 1; i <= 100; i++) {
      this.DataArrayUsuarios.push(`item ${i}`);
    }
  }


}
