import 'package:punto_venta/modelos/modelos_ventas.dart';
import "dart:math";
class ProductoController {
  List<Producto> productos = [
    Producto(id: 1, nombre: 'Coca', precio: 87.65),
    Producto(id: 2, nombre: 'Pepsi', precio: 67.65),
    Producto(id: 3, nombre: 'Fanta', precio: 57.65),
    Producto(id: 4, nombre: "Crakis", precio: 18.50),
    Producto(id: 5, nombre: "Papoi", precio: 19.00),
  ];
  void presionarBoton(id, nombre, precio) {
    Producto producto = Producto(
      id: id,
      nombre: nombre,
      precio: precio,
    );
    productos.add(producto);
  }
}
