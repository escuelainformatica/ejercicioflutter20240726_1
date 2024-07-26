import 'package:ejercicioflutter20240726_2/modelo/producto.dart';
import 'package:ejercicioflutter20240726_2/widget/form/producto_insertar_form.dart';
import 'package:flutter/material.dart';

class ProductoInsertarPagina extends StatefulWidget {
  const ProductoInsertarPagina({Key? key}) : super(key: key);

  @override
  _ProductoInsertarPaginaState createState() => _ProductoInsertarPaginaState();
}

class _ProductoInsertarPaginaState extends State<ProductoInsertarPagina> {
  Producto producto=Producto(0,"",0,"");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Insertar Producto"),),
      body: ProductoInsertarForm(producto),
    );
  }
}
