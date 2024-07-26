import 'package:ejercicioflutter20240726_2/pagina/categoria_insertar_pagina.dart';
import 'package:ejercicioflutter20240726_2/pagina/compra_listar_pagina.dart';
import 'package:ejercicioflutter20240726_2/pagina/producto_listar_pagina.dart';
import 'package:ejercicioflutter20240726_2/srv/categoria_srv.dart';
import 'package:ejercicioflutter20240726_2/widget/botones_navegacion.dart';
import 'package:ejercicioflutter20240726_2/widget/listview/categoria_listview.dart';
import 'package:flutter/material.dart';

import '../modelo/categoria.dart';

class CategoriaListarPagina extends StatefulWidget {
  CategoriaListarPagina({Key? key}) : super(key: key);

  @override
  _CategoriaListarPaginaState createState() => _CategoriaListarPaginaState();
}

class _CategoriaListarPaginaState extends State<CategoriaListarPagina> {
  List<Categoria> categorias = [];

  @override
  Widget build(BuildContext context) {
    categorias = CategoriaSrv.obtenerCategorias();
    return Scaffold(
      appBar: AppBar(
        title: Text("Listado de categoria"),
      ),
      body: CategoriaListview(categorias),
      bottomNavigationBar: BotonesNavegacion(),
    );
  }
}
