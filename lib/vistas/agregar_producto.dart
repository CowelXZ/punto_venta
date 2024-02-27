import 'package:flutter/material.dart';
import 'package:punto_venta/modelos/modelos_ventas.dart';
import 'package:punto_venta/vistas/agregar_producto.dart';
import '';

class AgregarProductoVista extends StatelessWidget {
  final List<Producto> productos;
  final TextEditingController idController = TextEditingController();
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController precioController = TextEditingController();
  AgregarProductoVista({super.key, required this.productos});

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
        /*decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/t1new_fondo.jpg'),
                  fit: BoxFit.cover,
                ),
              ),*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('id'),
            TextField(
              controller: idController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Nombre'),
            TextField(
              controller: nombreController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Precio'),
            TextField(
              controller: precioController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  String id = idController.text;
                  String nombre = nombreController.text;
                  String precio = precioController.text;
                  productos.add(
                    Producto(
                      id: int.parse(id),
                      nombre: nombre,
                      precio: double.parse(precio),
                    ),
                  );
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
