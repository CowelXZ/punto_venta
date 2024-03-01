import 'package:punto_venta/modelos/modelos_ventas.dart';
import 'package:hive/hive.dart';

class VentasController {
  List<Producto> obtenerProductos() {
    var productos = Hive.box('productos');
    List<Producto> listaProductos = [];

    for (var producto in productos.values) {
      listaProductos.add(Producto(
        id: producto['id'],
        nombre: producto['nombre'],
        precio: double.parse(producto['precio']),
      ));
    }

    return listaProductos;
  }
  int encontrarIndiceProducto(Producto producto) {
    var productos = Hive.box('productos');
    
    // Convierte los valores de Hive en una lista para facilitar la búsqueda
    var listaProductos = productos.values.toList();

    for (var i = 0; i < listaProductos.length; i++) {
      if (listaProductos[i]['id'] == producto.id) {
        return i; // Devuelve el índice si encuentra el producto
      }
    }

    return -1; // Devuelve -1 si el producto no se encuentra en la lista
  }

  void eliminarProducto(Producto producto) {
    var productos = Hive.box('productos');

    // Encuentra el índice del producto en la lista y elimínalo del Hive box
    var index = encontrarIndiceProducto(producto);
    if (index != -1) {
      productos.deleteAt(index);
    }
  }
}