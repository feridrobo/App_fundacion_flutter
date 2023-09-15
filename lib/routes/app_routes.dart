import 'package:flutter/material.dart';
import 'package:fundacion_v1/presentation/aceptar_ubicacion_actual_screen/aceptar_ubicacion_actual_screen.dart';
import 'package:fundacion_v1/presentation/principal_screen/principal_screen.dart';
import 'package:fundacion_v1/presentation/espera_screen/espera_screen.dart';
import 'package:fundacion_v1/presentation/review_screen/review_screen.dart';
import 'package:fundacion_v1/presentation/profile_screen/profile_screen.dart';
import 'package:fundacion_v1/presentation/profile_datos_clinicos_screen/profile_datos_clinicos_screen.dart';
import 'package:fundacion_v1/presentation/profile_informacion_personal_screen/profile_informacion_personal_screen.dart';
import 'package:fundacion_v1/presentation/review_doctor_screen/review_doctor_screen.dart';
import 'package:fundacion_v1/presentation/login_screen/login_screen.dart';
import 'package:fundacion_v1/presentation/registrarse_screen/registrarse_screen.dart';
import 'package:fundacion_v1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String aceptarUbicacionActualScreen =
      '/aceptar_ubicacion_actual_screen';

  static const String principalScreen = '/principal_screen';

  static const String esperaScreen = '/espera_screen';

  static const String reviewScreen = '/review_screen';

  static const String profileScreen = '/profile_screen';

  static const String profileDatosClinicosScreen =
      '/profile_datos_clinicos_screen';

  static const String profileInformacionPersonalScreen =
      '/profile_informacion_personal_screen';

  static const String reviewDoctorScreen = '/review_doctor_screen';

  static const String loginScreen = '/login_screen';

  static const String registrarseScreen = '/registrarse_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    aceptarUbicacionActualScreen: (context) => AceptarUbicacionActualScreen(),
    principalScreen: (context) => PrincipalScreen(),
    esperaScreen: (context) => EsperaScreen(),
    reviewScreen: (context) => ReviewScreen(),
    profileScreen: (context) => ProfileScreen(),
    profileDatosClinicosScreen: (context) => ProfileDatosClinicosScreen(),
    profileInformacionPersonalScreen: (context) =>
        ProfileInformacionPersonalScreen(),
    reviewDoctorScreen: (context) => ReviewDoctorScreen(),
    loginScreen: (context) => LoginScreen(),
    registrarseScreen: (context) => RegistrarseScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
