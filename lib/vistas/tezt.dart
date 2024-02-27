import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:punto_venta/controlador/control_ventas.dart';

import '';

class Tezt extends StatelessWidget {
  final ProductoController productoController = ProductoController();
  @override
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
                            MaterialPageRoute(builder: (context) => Tezt()),
                          );
                        },
                      ),
                    ])
          ],
        ),
        body: Stack(
          children: [ 
          Container(
            padding:const EdgeInsets.symmetric(vertical: 40), 
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/yanise_fondo.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SingleChildScrollView(
            
          )
        ]));
  }
}
