import 'package:ejercicioflutter20240726_2/modelo/producto.dart';

class ProductoSrv {
  static List<Producto> productos=[];
  // metodos
  static List<Producto> obtenerProducto() {
    //List<Categoria> tmp=[Categoria(1,"cat1"),Categoria(2, "cat2")];
    //return tmp;
    return productos;
  }
  static void agregarProducto(Producto producto) {
    Producto nueva=Producto(producto.id,producto.nombre,producto.precio,producto.nombreCategoria); // se crea una nueva categoria antes de agregarla
    productos.add(nueva);
  }
}

