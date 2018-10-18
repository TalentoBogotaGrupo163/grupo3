import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { DebilidadesXPersonaComponent } from './debilidades-xpersona.component';

describe('DebilidadesXPersonaComponent', () => {
  let component: DebilidadesXPersonaComponent;
  let fixture: ComponentFixture<DebilidadesXPersonaComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ DebilidadesXPersonaComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(DebilidadesXPersonaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
