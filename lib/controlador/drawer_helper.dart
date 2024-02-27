import 'package:flutter/material.dart';
import 'package:punto_venta/vistas/agregar_producto.dart';
import 'package:punto_venta/vistas/inicio.dart';

class DrawerHelper {
  static Widget buildDrawer(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black,
      child: ListView(
        children: <Widget>[
          Container(
          color: Color.fromARGB(255, 255, 255, 255),
          child: Column(
            children: [
              Container(
                width: 100,
                height: 100,
                margin: const EdgeInsets.only(top: 50, bottom: 20),
                child: Image.asset('assets/skt.png'),
              ),
              const Text("T1 Store Unofficial",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(224, 224, 1, 45),
                  )),
          const SizedBox(height: 20),    
          ListTile(
            
            title:const Text('Inicio', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(252, 0, 0, 0),
                  ),
            ),
            onTap: () {
              Navigator.pop(context); // Cerrar el Drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Inicio()),
              );
            },
          ),
          ListTile(
            title: const Text('Agregar Productos',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(252, 0, 0, 0),
                  ),
            ),      
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AgregarProductoVista(productos: [],)),
              );
            },
          ),
          ListTile(
            title: const Text('Salir',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(252, 0, 0, 0),
                  ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
            ],
          ),
        ),
        ],
      ),
    ),
    );
  }   
}


/*
 child: Container(
          color: Colors.black,
          child: Column(
            children: [
              Container(
                width: 100,
                height: 100,
                margin: const EdgeInsets.only(top: 50, bottom: 20),
                child: Image.asset('assets/skt.png'),
              ),
              const Text("T1 Store Unofficial",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(224, 224, 1, 45),
                  )),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 30),
                padding: const EdgeInsets.all(20),
                
                color: const Color.fromARGB(255, 255, 255, 255),
                child: const Text("Hla que hace"),
              )    
            ],
          ),
        ),
*/