import 'package:flutter/material.dart';

import '../../modelo/compra.dart';

class CompraFila extends StatefulWidget {
  Compra compra;
  CompraFila(this.compra, {Key? key}) : super(key: key);

  @override
  _CompraFilaState createState() => _CompraFilaState();
}

class _CompraFilaState extends State<CompraFila> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text("${widget.compra.nombreProducto} "),
        subtitle: Text("${widget.compra.cantidad} "),
      ),
    );
  }
}
