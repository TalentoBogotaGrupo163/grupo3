import { TestBed } from '@angular/core/testing';

import { HabilidadesxpersonaService } from './habilidadesxpersona.service';

describe('HabilidadesxpersonaService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: HabilidadesxpersonaService = TestBed.get(HabilidadesxpersonaService);
    expect(service).toBeTruthy();
  });
});
