import 'package:flutter/material.dart';
import 'screens/inicio.dart'; // nombre de screen de donde comienza

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( //estrcutura basica de una app con diseño tipo android
      title: 'Historial de Recetas',
      theme: ThemeData(primarySwatch: Colors.teal), // cambia colores y estilos
      home: InicioScreen(), //indica que pantalla se muestra en el inicio
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'screens/inicio.dart';

// void main() {
//   runApp(
//     ProviderScope( // << NECESARIO para Riverpod
//       child: MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Historial de Recetas',
//       theme: ThemeData(
//         primarySwatch: Colors.teal,
//       ),
//       home: InicioScreen(),
//     );
//   }
// }
