import 'package:flutter/material.dart';
import 'package:punto_venta/controlador/agregar_producto_controller.dart';
import 'package:punto_venta/modelos/modelos_ventas.dart';
import 'package:punto_venta/vistas/agregar_producto.dart';
import '';

class AgregarProductoVista extends StatelessWidget {
  final List<Producto> productos;
  final AgregarProductoController controller = AgregarProductoController();
  final TextEditingController idController = TextEditingController();
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController precioController = TextEditingController();

  AgregarProductoVista({Key? key, required this.productos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agregar Producto'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: idController,
              decoration: const InputDecoration(labelText: 'ID del Producto'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: nombreController,
              decoration:
                  const InputDecoration(labelText: 'Nombre del Producto'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: precioController,
              decoration:
                  const InputDecoration(labelText: 'Precio del Producto'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  String id = idController.text;
                  String nombre = nombreController.text;
                  String precio = precioController.text;
                  controller.agregarProducto(id, nombre, precio);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Producto agregado al almacén'),
                    ),
                  );
                  idController.clear();
                  nombreController.clear();
                  precioController.clear();
                },
                child: const Text('Guardar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
