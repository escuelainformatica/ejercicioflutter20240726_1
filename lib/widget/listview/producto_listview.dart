import 'package:ejercicioflutter20240726_2/widget/fila/producto_fila.dart';
import 'package:flutter/material.dart';

import '../../modelo/producto.dart';

class ProductoListview extends StatefulWidget {
  List<Producto> productos;
  ProductoListview(this.productos, {Key? key}) : super(key: key);

  @override
  _ProductoListviewState createState() => _ProductoListviewState();
}

class _ProductoListviewState extends State<ProductoListview> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context,int fila) {
        return ProductoFila(widget.productos[fila]);
      },
      itemCount: widget.productos.length,
    );
  }
}
