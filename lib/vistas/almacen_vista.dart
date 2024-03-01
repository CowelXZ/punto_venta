import 'package:flutter/material.dart';
import 'package:punto_venta/controlador/ventas_cont.dart';
import 'package:punto_venta/controlador/ventas_controller.dart';
import 'package:punto_venta/modelos/modelos_ventas.dart';

class AlmacenVista extends StatefulWidget {
  const AlmacenVista({Key? key}) : super(key: key);

  @override
  _AlmacenVistaState createState() => _AlmacenVistaState();
}

class _AlmacenVistaState extends State<AlmacenVista> {
  final VentasController almacenController = VentasController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Almacén'),
      ),
      body: ListView(
        children: almacenController.obtenerProductos().map((producto) {
          return ListTile(
            title: Text(producto.nombre),
            subtitle: Text(producto.precio.toString()),
            trailing: IconButton(
              onPressed: () {
                // Lógica para agregar el producto a VerProductosVista
                _agregarProducto(producto);
              },
              icon: const Icon(Icons.add),
            ),
          );
        }).toList(),
      ),
    );
  }

  void _agregarProducto(Producto producto) {
    Navigator.pop(context, producto);
  }
}