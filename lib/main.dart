import 'package:ejercicioflutter20240726_2/pagina/categoria_insertar_pagina.dart';
import 'package:ejercicioflutter20240726_2/pagina/categoria_listar_pagina.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: CategoriaListarPagina(),
    );
  }
}
