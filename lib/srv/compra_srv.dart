import '../modelo/compra.dart';

class CompraSrv {
  static List<Compra> compras=[];
  // metodos
  static List<Compra> obtenerCompras() {
    //List<Categoria> tmp=[Categoria(1,"cat1"),Categoria(2, "cat2")];
    //return tmp;
    return compras;
  }
  static void agregarCompras(Compra compra) {
    Compra nueva=Compra(compra.id,compra.nombreProducto,compra.cantidad); // se crea una nueva categoria antes de agregarla
    compras.add(nueva);
  }
}

