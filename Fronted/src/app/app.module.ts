import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { RouteReuseStrategy } from '@angular/router';

import { IonicModule, IonicRouteStrategy } from '@ionic/angular';
import { SplashScreen } from '@ionic-native/splash-screen/ngx';
import { StatusBar } from '@ionic-native/status-bar/ngx';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { CiudadesComponent } from './ciudades/ciudades.component';
import { EstudiantesComponent } from './estudiantes/estudiantes.component';
import { HabilidadesComponent } from './habilidades/habilidades.component';
import { DebilidadesComponent } from './debilidades/debilidades.component';
import { DebilidadesXPersonaComponent } from './debilidades-xpersona/debilidades-xpersona.component';
import { HabilidadesXPersonaComponent } from './habilidades-xpersona/habilidades-xpersona.component';
import { UniversidadesComponent } from './universidades/universidades.component';
import { ProgramasComponent } from './programas/programas.component';
import { BeneficiosComponent } from './beneficios/beneficios.component';
import { CursosComponent } from './cursos/cursos.component';
import { EntidadesComponent } from './entidades/entidades.component';
import { ColegioComponent } from './colegio/colegio.component';
import { ActividadesComponent } from './actividades/actividades.component';
import { AsignaturasComponent } from './asignaturas/asignaturas.component';
import { NotasComponent } from './notas/notas.component';

@NgModule({
  declarations: [AppComponent, CiudadesComponent, EstudiantesComponent, HabilidadesComponent, DebilidadesComponent, DebilidadesXPersonaComponent, HabilidadesXPersonaComponent, UniversidadesComponent, ProgramasComponent, BeneficiosComponent, CursosComponent, EntidadesComponent, ColegioComponent, ActividadesComponent, AsignaturasComponent, NotasComponent],
  entryComponents: [],
  imports: [BrowserModule, IonicModule.forRoot(), AppRoutingModule],
  providers: [
    StatusBar,
    SplashScreen,
    { provide: RouteReuseStrategy, useClass: IonicRouteStrategy }
  ],
  bootstrap: [AppComponent]
})
export class AppModule {}
