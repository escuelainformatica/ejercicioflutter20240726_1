import 'package:ejercicioflutter20240726_2/pagina/compra_insertar_pagina.dart';
import 'package:ejercicioflutter20240726_2/pagina/producto_insertar_pagina.dart';
import 'package:flutter/material.dart';

import '../pagina/categoria_insertar_pagina.dart';
import '../pagina/categoria_listar_pagina.dart';
import '../pagina/compra_listar_pagina.dart';
import '../pagina/producto_listar_pagina.dart';

class BotonesNavegacion extends StatefulWidget {
  const BotonesNavegacion({Key? key}) : super(key: key);

  @override
  _BotonesNavegacionState createState() => _BotonesNavegacionState();
}

class _BotonesNavegacionState extends State<BotonesNavegacion> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Listar Categoria",
            backgroundColor: Colors.blue),
        BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Listar Compras",
            backgroundColor: Colors.blue),
        BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Listar Productos",
            backgroundColor: Colors.blue),
        BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Insertar Categoria",
            backgroundColor: Colors.blue),
        BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Insertar Compras",
            backgroundColor: Colors.blue),
        BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Insertar Productos",
            backgroundColor: Colors.blue),
      ],
      onTap: (int numBoton) {
        switch (numBoton) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CategoriaListarPagina()),
            );
            break;
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CompraListarPagina()),
            );
            break;
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProductoListarPagina()),
            );
            break;
          case 3:
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CategoriaInsertarPagina()),
            ).then((t) {
              // luego de que se visito la pagina de insertar categorias, al vlover se llama al siguiente codigo
              setState(() {
                //categorias = CategoriaSrv.obtenerCategorias();
              });
            });
            break;
          case 4:
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CompraInsertarPagina()),
            ).then((t) {
              // luego de que se visito la pagina de insertar categorias, al vlover se llama al siguiente codigo
              setState(() {
                //categorias = CategoriaSrv.obtenerCategorias();
              });
            });
            break;
          case 5:
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProductoInsertarPagina()),
            ).then((t) {
              // luego de que se visito la pagina de insertar categorias, al vlover se llama al siguiente codigo
              setState(() {
                //categorias = CategoriaSrv.obtenerCategorias();
              });
            });
            break;
        }
      },
    );
  }
}
