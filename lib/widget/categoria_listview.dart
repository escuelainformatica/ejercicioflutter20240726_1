import 'package:ejercicioflutter20240726_2/widget/categoria_fila.dart';
import 'package:flutter/material.dart';

import '../modelo/categoria.dart';

class CategoriaListview extends StatefulWidget {
  List<Categoria> categorias;
  CategoriaListview(this.categorias, {Key? key}) : super(key: key);

  @override
  _CategoriaListviewState createState() => _CategoriaListviewState();
}

class _CategoriaListviewState extends State<CategoriaListview> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context,int fila) {
        return CategoriaFila(widget.categorias[fila]);
      },
      itemCount: widget.categorias.length,
    );
  }
}
