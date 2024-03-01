import 'package:flutter/material.dart';
import 'package:punto_venta/controlador/agregar_producto_controller.dart';
import 'package:punto_venta/controlador/almacen_controller.dart';
import 'package:punto_venta/modelos/modelos_ventas.dart';
class AgregarProductoAlmacen extends StatefulWidget {
  @override
  _AgregarProductoAlmacenState createState() => _AgregarProductoAlmacenState();
}

class _AgregarProductoAlmacenState extends State<AgregarProductoAlmacen> {
  final TextEditingController idController = TextEditingController();
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController precioController = TextEditingController();

  final AgregarProductoController controller = AgregarProductoController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Producto'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: idController,
              decoration: InputDecoration(labelText: 'ID del Producto'),
            ),
            TextField(
              controller: nombreController,
              decoration: InputDecoration(labelText: 'Nombre del Producto'),
            ),
            TextField(
              controller: precioController,
              decoration: InputDecoration(labelText: 'Precio del Producto'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                // Obtén los datos del formulario
                String id = idController.text;
                String nombre = nombreController.text;
                double precio = double.tryParse(precioController.text) ?? 0;

                // Crea un nuevo producto
                Producto nuevoProducto = Producto(id: id, nombre: nombre, precio: precio);

                // Agrega el producto al almacén
                controller.agregarProducto(id,nombre,precio as String);

                // Opcional: Puedes mostrar un mensaje o navegar a otra pantalla
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Producto agregado al almacén'),
                  ),
                );

                // Opcional: Limpiar los campos del formulario
                idController.clear();
                nombreController.clear();
                precioController.clear();
              },
              child: Text('Agregar Producto'),
            ),
          ],
        ),
      ),
    );
  }
}