import 'package:ejercicioflutter20240726_2/modelo/categoria.dart';
import 'package:ejercicioflutter20240726_2/widget/form/categoria_insertar_form.dart';
import 'package:flutter/material.dart';

class CategoriaInsertarPagina extends StatefulWidget {
  const CategoriaInsertarPagina({Key? key}) : super(key: key);

  @override
  _CategoriaInsertarPaginaState createState() =>
      _CategoriaInsertarPaginaState();
}

class _CategoriaInsertarPaginaState extends State<CategoriaInsertarPagina> {
  Categoria categoria=Categoria(0, "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Insertar Categoria"),),
      body: CategoriaInsertarForm(categoria), //todo: pendiente
    );
  }
}
