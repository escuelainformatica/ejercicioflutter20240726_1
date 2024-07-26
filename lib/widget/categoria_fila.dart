import 'package:ejercicioflutter20240726_2/modelo/categoria.dart';
import 'package:flutter/material.dart';

class CategoriaFila extends StatefulWidget {
  Categoria categoria;
  CategoriaFila(this.categoria, {Key? key}) : super(key: key);

  @override
  _CategoriaFilaState createState() => _CategoriaFilaState();
}

class _CategoriaFilaState extends State<CategoriaFila> {
  @override
  Widget build(BuildContext context) {
    return Card(
       child: ListTile(
         title: Text("${widget.categoria.nombre} "),
         subtitle: Text("${widget.categoria.id} "),
       ),
    );
  }
}
