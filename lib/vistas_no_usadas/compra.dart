/*
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:punto_venta/controlador/contador_venta.dart';
import 'package:punto_venta/controlador/control_ventas.dart';
import 'package:punto_venta/controlador/drawer_helper.dart';
import 'package:punto_venta/modelos/modelos_ventas.dart';
import 'package:punto_venta/vistas/agregar_producto.dart';
import 'package:punto_venta/vistas/almacen.dart';
import 'package:punto_venta/vistas/inicio.dart';

import 'package:punto_venta/vistas/tezt.dart';

class Compra extends StatelessWidget {
  final ProductoController productoController = ProductoController();

  Compra({super.key, required List<Producto> productos});
  @override
  Widget build(BuildContext context) {
    //var ventasController;
    return Scaffold(
      backgroundColor: Color.fromARGB(176, 156, 81, 81),
      drawer: DrawerHelper.buildDrawer(context), 
      appBar: AppBar(
        titleTextStyle: const TextStyle(
          fontFamily: 'Times New Roman',
          color: Color.fromARGB(255, 238, 235, 235),
          fontSize: 22,
        ),
        title: const Text("Hola que hace"),
        toolbarOpacity: 1,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/fondo_t1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    Expanded(
                      child: TextField(
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            //backgroundColor: Color.fromARGB(255, 255, 255, 255),
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          labelText: 'Codigo o Producto',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  //width: 500,
                  //height: 400,
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 2,
                      color: const Color.fromARGB(255, 15, 14, 22),
                    ),
                  ),
                  child: Expanded(
                    child: ListView.builder(
                        padding: const EdgeInsets.fromLTRB(8, 18, 8, 8),
                        shrinkWrap: true,
                        itemCount: productoController.productos.length,
                        itemBuilder: (BuildContext context, int index) {
                          final producto = productoController.productos[index];

                          return ListTile(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            title: Text(producto.nombre),
                            trailing: Text(
                                style: const TextStyle(
                                  fontSize: 15,
                                ),
                                producto.precio.toString()),
                            leading: Text(
                              style: const TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                              producto.id.toString(),
                            ),
                          );
                        }),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  child: const Text("Monto de la compra: ",//+venta_contador(co
                 //unt)+"",
                  
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(224, 224, 1, 45),
                  )),


                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {

                      },
                      
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: const CircleBorder(
                          side: BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0),
                            width: 1,
                          ),
                        ),
                        backgroundColor: const Color.fromARGB(255, 247, 4, 4),
                        padding: const EdgeInsets.all(20),
                      ),
                      child: const Icon(
                        EvaIcons.car,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: const CircleBorder(
                          side: BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0),
                            width: 1,
                          ),
                        ),
                        backgroundColor: const Color.fromARGB(255, 255, 0, 0),
                        padding: const EdgeInsets.all(20),
                      ),
                      child: const Icon(
                        EvaIcons.trash2,
                        color: Color.fromARGB(255, 247, 245, 244),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                      height: 100,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
*/