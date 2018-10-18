import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HabilidadesXPersonaComponent } from './habilidades-xpersona.component';

describe('HabilidadesXPersonaComponent', () => {
  let component: HabilidadesXPersonaComponent;
  let fixture: ComponentFixture<HabilidadesXPersonaComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HabilidadesXPersonaComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HabilidadesXPersonaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
