import 'package:ejercicioflutter20240726_2/widget/fila/compra_fila.dart';
import 'package:flutter/material.dart';

import '../../modelo/compra.dart';

class CompraListview extends StatefulWidget {
  List<Compra> compras;
  CompraListview(this.compras, {Key? key}) : super(key: key);

  @override
  _CompraListviewState createState() => _CompraListviewState();
}

class _CompraListviewState extends State<CompraListview> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context,int fila) {
        return CompraFila(widget.compras[fila]);
      },
      itemCount: widget.compras.length,
    );
  }
}
