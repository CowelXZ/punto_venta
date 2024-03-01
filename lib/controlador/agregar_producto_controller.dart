import 'package:hive/hive.dart';
import 'package:punto_venta/controlador/almacen_controller.dart';
import 'package:punto_venta/modelos/modelos_ventas.dart';

class AgregarProductoController {
  void agregarProducto(
    String id,
    String nombre,
    String precio,

  ) {
    bool isValid = true;
    //1.-validar primero mis datos de entrada
    //checar que no este vacio
    //checar que corresponda al tipo de dato que espero

    //2.- Agregar producto a la base de datos
    //si y solo si la información es valida

    if (isValid) {
      var productos = Hive.box('productos');
      productos.put(id, {'id': id, 'nombre': nombre, 'precio': precio});
    }
  }
  void agregarProductoAlAlmacen(Producto producto, String nombre, double precio) async {
    AlmacenController almacenController = AlmacenController();
    await almacenController.agregarProducto(producto);
  }
}
