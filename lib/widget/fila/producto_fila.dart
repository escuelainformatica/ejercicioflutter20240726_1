import 'package:ejercicioflutter20240726_2/modelo/producto.dart';
import 'package:flutter/material.dart';

class ProductoFila extends StatefulWidget {
  Producto producto;
  ProductoFila(this.producto, {Key? key}) : super(key: key);

  @override
  _ProductoFilaState createState() => _ProductoFilaState();
}

class _ProductoFilaState extends State<ProductoFila> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text("${widget.producto.nombre} "),
        subtitle: Text("${widget.producto.precio} "),
      ),
    );
  }
}
