import 'package:ejercicioflutter20240726_2/srv/producto_srv.dart';
import 'package:ejercicioflutter20240726_2/widget/listview/producto_listview.dart';
import 'package:flutter/material.dart';

import '../modelo/producto.dart';
import '../widget/botones_navegacion.dart';

class ProductoListarPagina extends StatefulWidget {
  const ProductoListarPagina({Key? key}) : super(key: key);

  @override
  _ProductoListarPaginaState createState() => _ProductoListarPaginaState();
}

class _ProductoListarPaginaState extends State<ProductoListarPagina> {
  List<Producto> productos=[];
  @override
  Widget build(BuildContext context) {
    productos=ProductoSrv.obtenerProducto();
    return Scaffold(
        appBar: AppBar(
        title: Text("Listado de Productos"),
    ),
    body: ProductoListview(productos),
      bottomNavigationBar: BotonesNavegacion(),
    );
  }
}
