import { TestBed } from '@angular/core/testing';

import { DebilidadesService } from './debilidades.service';

describe('DebilidadesService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: DebilidadesService = TestBed.get(DebilidadesService);
    expect(service).toBeTruthy();
  });
});
