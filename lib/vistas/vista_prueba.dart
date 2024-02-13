import 'dart:ffi';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: '',
      ),
      title: 'Flutter Demo',
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({
    super.key,
    required this.title,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 238, 231, 231),
        appBar: AppBar(
          title: const Text("Holaquehace"),
          toolbarHeight: 0,
          // centerTitle: true,

          backgroundColor: Colors.transparent,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
          ),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(5, 10, 10, 5),
          child: Column(children: [
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
                        EvaIcons.search,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 0,
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(35),
                      ),
                      // borderSide: BorderSide.none,
                    ),
                    labelText: 'Buscador',
                    hintText: "Codigo o Nombre del Producto"),
              ),
            ),
            const SizedBox(
              height: 50,
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
                      color: Color(0xffFF9301),
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
              ),
              const SizedBox(
                width: 10,
              ),

            ]),
          ]),
        ));
  }
}
