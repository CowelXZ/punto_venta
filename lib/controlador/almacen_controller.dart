import 'package:hive/hive.dart';
import 'package:punto_venta/modelos/modelos_ventas.dart';

class AlmacenController {
  static const String _almacenBoxName = 'almacen';

  Future<Box<Producto>> _openBox() async {
    return await Hive.openBox<Producto>(_almacenBoxName);
  }

  Future<void> agregarProducto(Producto producto) async {
    final Box<Producto> almacenBox = await _openBox();
    await almacenBox.add(producto);
  }

  List<Producto> obtenerProductos() {
    final Box<Producto> almacenBox = Hive.box<Producto>(_almacenBoxName);
    return almacenBox.values.toList();
  }

  Future<void> eliminarProducto(Producto producto) async {
    final Box<Producto> almacenBox = await _openBox();
    final productoIndex = almacenBox.values.toList().indexWhere((p) => p.id == producto.id);

    if (productoIndex != -1) {
      await almacenBox.deleteAt(productoIndex);
    }
  }
}