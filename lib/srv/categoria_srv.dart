import '../modelo/categoria.dart';

class CategoriaSrv {
  // campos
  static List<Categoria> categorias=[];
  // metodos
  static List<Categoria> obtenerCategorias() {
    //List<Categoria> tmp=[Categoria(1,"cat1"),Categoria(2, "cat2")];
    //return tmp;
    return categorias;
  }
  static void agregarCategoria(Categoria categoria) {
    Categoria nueva=Categoria(categoria.id, categoria.nombre); // se crea una nueva categoria antes de agregarla
    categorias.add(nueva);
  }

}

