import 'package:ejercicioflutter20240726_2/modelo/categoria.dart';
import 'package:ejercicioflutter20240726_2/pagina/categoria_listar_pagina.dart';
import 'package:ejercicioflutter20240726_2/srv/categoria_srv.dart';
import 'package:flutter/material.dart';

class CategoriaInsertarForm extends StatefulWidget {
  Categoria categoria;
  CategoriaInsertarForm(this.categoria, {Key? key}) : super(key: key);

  @override
  _CategoriaInsertarFormState createState() => _CategoriaInsertarFormState();
}

class _CategoriaInsertarFormState extends State<CategoriaInsertarForm> {
  TextEditingController idControlador=TextEditingController();
  TextEditingController nombreControlador=TextEditingController();

  @override
  void initState() {
    super.initState();
    idControlador.text=widget.categoria.id.toString();
    idControlador.addListener(() {
      //todo: revisar que el dato sea un numero
      widget.categoria.id=int.parse(idControlador.text);
    });
    nombreControlador.text=widget.categoria.nombre;
    nombreControlador.addListener(() {
      widget.categoria.nombre=nombreControlador.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    // esta funcion se llamada cada vez que hay que dibujar o re-dibujar.
    return ListView(
        children: [
          TextField(controller: idControlador,),
          TextField(controller: nombreControlador,),
          ElevatedButton(onPressed: () {
            CategoriaSrv.agregarCategoria(widget.categoria);
            Navigator.pop(context);
          } , child: Text("Insertar")),
        ],
    );
  }
}
