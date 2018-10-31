import { TestBed } from '@angular/core/testing';

import { BeneficiosService } from './beneficios.service';

describe('BeneficiosService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: BeneficiosService = TestBed.get(BeneficiosService);
    expect(service).toBeTruthy();
  });
});
