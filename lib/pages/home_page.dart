import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const int days = 30;
    const String name = "Codepur";
    return Scaffold(
        appBar:AppBar(
          title: const Text("Catalog App")
        ),
        body: Center(
          child: Container(
            child: const Text("Welcome, to $days of flutter by $name"),
          ),
        ),
        drawer: const Drawer(),
      );
  }
}