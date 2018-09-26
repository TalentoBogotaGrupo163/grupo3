import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { ActivatedRoute } from '@angular/router';
import { NewuserService } from './newuser.service';
@Component({
  selector: 'app-new-user',
  templateUrl: './new-user.component.html',
  styleUrls: ['./new-user.component.css'],
  providers: []
})
export class NewUserComponent implements OnInit {
  ArrayUsuarios: any = [];
  constructor(public newuserService: NewuserService) { }

  ngOnInit() {
  }
  LoadComprasData() {
    this.newuserService.getCompras().subscribe(
      data => {
        this.ArrayUsuarios = data;
        console.log(data);
      }
    )
    for (let i = 1; i <= 100; i++) {
      this.ArrayUsuarios.push(`item ${i}`);
    }

  }
}
