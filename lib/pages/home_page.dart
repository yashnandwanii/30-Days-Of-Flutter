import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const int days = 30;
    const String name = "Codepur";
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Catalog App",
        ),
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Container(
          child: const Text("Welcome, to $days of flutter by $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
