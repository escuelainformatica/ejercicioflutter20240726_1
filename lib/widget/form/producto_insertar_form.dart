import 'package:ejercicioflutter20240726_2/modelo/producto.dart';
import 'package:ejercicioflutter20240726_2/srv/producto_srv.dart';
import 'package:flutter/material.dart';

class ProductoInsertarForm extends StatefulWidget {
  Producto producto;
  ProductoInsertarForm(this.producto, {Key? key}) : super(key: key);

  @override
  _ProductoInsertarFormState createState() => _ProductoInsertarFormState();
}

class _ProductoInsertarFormState extends State<ProductoInsertarForm> {
  TextEditingController idControlador=TextEditingController();
  TextEditingController nombreControlador=TextEditingController();
  TextEditingController precioControlador=TextEditingController();
  TextEditingController nombreCategoriaControlador=TextEditingController();
  @override
  void initState() {

    super.initState();
    idControlador.text=widget.producto.id.toString();
    idControlador.addListener(() {
      //todo: revisar que el dato sea un numero
      widget.producto.id=int.parse(idControlador.text);
    });

    nombreControlador.text=widget.producto.nombre;
    nombreControlador.addListener(() {
      widget.producto.nombre=nombreControlador.text;
    });


    precioControlador.text=widget.producto.precio.toString();
    precioControlador.addListener(() {
      //todo: revisar que el dato sea un numero
      widget.producto.precio=int.parse(precioControlador.text);
    });

    nombreCategoriaControlador.text=widget.producto.nombreCategoria;
    nombreCategoriaControlador.addListener(() {
      widget.producto.nombreCategoria=nombreCategoriaControlador.text;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: [
        TextField(controller: idControlador,),
        TextField(controller: nombreControlador,),
        TextField(controller: precioControlador,),
        TextField(controller: nombreCategoriaControlador,),
        ElevatedButton(onPressed: () {
          ProductoSrv.agregarProducto(widget.producto);
          Navigator.pop(context);
        } , child: Text("Insertar")),
      ],
    );
  }
}
