import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:punto_venta/modelos/modelos_ventas.dart';
import 'package:punto_venta/vistas/agregar_producto.dart';
import 'package:punto_venta/vistas_no_usadas/compra.dart';
import 'package:punto_venta/vistas/ver_producto_vista.dart';

import '';

class MenuVista extends StatelessWidget {
final List<Producto> productos = [];  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Column(       
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 15),
              Container(
                margin: const EdgeInsets.only(left: 5, right: 0, bottom: 15),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)),
                child: const Text(">Tezt<"),
              )
            ],
          ),
          centerTitle: true,
          actions: [
            PopupMenuButton(
                itemBuilder: (context) => [
                      const PopupMenuItem(
                        value: 1,
                        child: Text("Configuracion"),
                      ),
                      const PopupMenuItem(value: 2, child: Text("Veige")),
                      PopupMenuItem(
                        value: 3,
                        child: Text("Black"),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MenuVista()),
                          );
                        },
                      ),
                    ])
          ],
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VerProductosVista(
                        productos: productos,
                      ),
                    ),
                  );
                },
                child: const Text('Ventas'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AgregarProductoVista(
                        productos: productos,
                      ),
                    ),
                  );
                },
                child: const Text('Agregar Producto'),
              ),
              ElevatedButton(
                onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const VerProductosVista(productos: [],),
                    ),
                  );
                },
                child: const Text('Ver Productos'),
              ),
              ElevatedButton(
                onPressed: () {
                  var box = Hive.box('productos');

                  print(box.toMap());
                },
                child: const Text('Test Hive'),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            // var box = Hive.box('testBox');
            // box.put('name', 'David3');
            // var name = box.get('name');
            // print('Name: $name');
          },
          child: const Icon(Icons.add),
        ));
  }
}

