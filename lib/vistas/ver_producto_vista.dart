import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:punto_venta/controlador/drawer_helper.dart';
import 'package:punto_venta/controlador/ventas_controller.dart';
import 'package:flutter/material.dart';
import 'package:punto_venta/modelos/modelos_ventas.dart';

class VerProductosVista extends StatefulWidget {
  const VerProductosVista({super.key, required List<Producto> productos});
  @override
  _VerProductosVistaState createState() => _VerProductosVistaState();
}

class _VerProductosVistaState extends State<VerProductosVista> {
  final VentasController controller = VentasController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(204, 202, 11, 11),
      drawer: DrawerHelper.buildDrawer(context),
      appBar: AppBar(
        title: const Text('Tu Carrito'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 450,
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 238, 237, 237),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(118, 0, 0, 0).withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: ListView(
                children: controller.obtenerProductos().map((producto) {
                  return ListTile(
                    leading: Text(producto.id.toString()),
                    title: Text(producto.nombre),
                    subtitle: Text(producto.precio.toString()),
                    trailing: ElevatedButton.icon(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text("Eliminar Usuario"),
                            content: Text(
                                "¿Estás seguro de que quieres eliminar este Usuario?"),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("Cancelar"),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  _eliminarProducto(producto);
                                },
                                child: const Text("Eliminar"),
                              ),
                            ],
                          ),
                        );
                      },
                      label: const Text(""),
                      icon: const Icon(
                        EvaIcons.trash2,
                        color: Colors.red,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 238, 237, 237),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(118, 0, 0, 0).withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Text(
                'Monto Total de tu Compra: \$${calcularSuma().toStringAsFixed(2)}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _eliminarProducto(Producto producto) {
    setState(() {
      // Llamada para eliminar el producto de la lista y de Hive
      controller.eliminarProducto(producto);
    });
  }

  double calcularSuma() {
    double suma = 0.0;
    for (var producto in controller.obtenerProductos()) {
      suma += producto.precio;
    }
    return suma;
  }
}
