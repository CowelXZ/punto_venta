import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:punto_venta/vistas/compra.dart';
import 'package:punto_venta/vistas/ver_imagen.dart';
import 'package:punto_venta/vistas/vista_prueba.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 243, 232, 172),
        appBar: AppBar(
          title: Text("Holaquehace"),
          toolbarHeight: 0,
          backgroundColor: Colors.transparent,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
          ),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(5, 10, 10, 5),
          child: Column(children: [
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 250,
              height: 250,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/skt.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                  iconColor: const Color.fromARGB(255, 218, 34, 28),
                  prefixIcon: Container(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 15,
                    ),
                    child: const Icon(
                      EvaIcons.email,
                      color: Color.fromARGB(255, 255, 0, 0),
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 0,
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(35),
                    ),
                  ),
                  labelStyle: const TextStyle(
                    color: Color.fromRGBO(5, 3, 3, 1),
                  ),
                  labelText: 'Correo electronico o numero',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    iconColor: const Color.fromARGB(255, 218, 34, 28),
                    prefixIcon: Container(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 15,
                      ),
                      child: const Icon(
                        EvaIcons.lock,
                        color: Color.fromARGB(255, 253, 3, 3),
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 0,
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(35),
                      ),
                    ),
                    labelStyle:
                        const TextStyle(color: Color.fromARGB(255, 10, 10, 10)),
                    labelText: 'Contraseña',
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: const CircleBorder(
                        side: BorderSide(
                          color: Color.fromARGB(255, 255, 2, 2),
                          width: 1,
                        ),
                      ),
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(20),
                    ),
                    child: const Icon(
                      EvaIcons.facebook,
                      color: Color.fromARGB(255, 255, 2, 2),
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
                          color: Color.fromARGB(255, 255, 2, 2),
                          width: 1,
                        ),
                      ),
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(20),
                    ),
                    child: const Icon(
                      EvaIcons.twitter,
                      color: Color.fromARGB(255, 255, 2, 2),
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
                          color: Color.fromARGB(255, 255, 1, 1),
                          width: 1,
                        ),
                      ),
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(20),
                    ),
                    child: const Icon(
                      EvaIcons.google,
                      color: Color.fromARGB(255, 255, 1, 1),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(155, 40),
                  backgroundColor: const Color.fromRGBO(245, 4, 4, 0.986),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Compra()),
                  );
                },
                child: const Text(
                  "-Acceder-",
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(155, 40),
                  backgroundColor: const Color.fromRGBO(245, 4, 4, 0.986),
                ),
                onPressed: () {
                  Navigator.pop(
                    context,
                    // MaterialPageRoute(builder: (context) =>const  VistaPrueba()),
                  );
                },
                child: const Text(
                  "-Retroceder-",
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  const XTypeGroup typeGroup = XTypeGroup(
                    label: 'images',
                    extensions: <String>['jpg', 'png'],
                  );
                  final XFile? file = await openFile(
                      acceptedTypeGroups: <XTypeGroup>[typeGroup]);
                  final Uint8List bytes = await file!.readAsBytes();

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VerImagenVista(
                        imageBytes: bytes,
                      ),
                    ),
                  );
                },
                child: const Text('Abrir archico'),
              ),

            ]),
          ]),
        ));
  }
}
