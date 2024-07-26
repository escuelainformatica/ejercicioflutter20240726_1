import 'package:ejercicioflutter20240726_2/widget/listview/compra_listview.dart';
import 'package:flutter/material.dart';

import '../modelo/compra.dart';
import '../srv/compra_srv.dart';
import '../widget/botones_navegacion.dart';

class CompraListarPagina extends StatefulWidget {
  const CompraListarPagina({Key? key}) : super(key: key);

  @override
  _CompraListarPaginaState createState() => _CompraListarPaginaState();
}

class _CompraListarPaginaState extends State<CompraListarPagina> {
  List<Compra> compras=[];
  @override
  Widget build(BuildContext context) {
    compras = CompraSrv.obtenerCompras();
    return Scaffold(
      appBar: AppBar(
        title: Text("Listado de compras"),
      ),
      body: CompraListview(compras),
      bottomNavigationBar: BotonesNavegacion(),
    );
  }
}
