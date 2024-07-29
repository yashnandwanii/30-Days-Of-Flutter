import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/items.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    try {
      final String catJson =
          await rootBundle.loadString("assets/files/catalog.json");
      final Map<String, dynamic> decodedData = jsonDecode(catJson);
      final List<dynamic> productsData = decodedData["products"];
      CatalogModel.products =
          productsData.map<Item>((item) => Item.fromMap(item)).toList();
      setState(() {});
    } catch (error) {
      print("Error loading data: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Catalog App",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.products.isNotEmpty)
            ? ListView.builder(
                itemCount: CatalogModel.products.length,
                itemBuilder: (context, index) {
                  return ItemWidget(
                    item: CatalogModel.products[index],
                  );
                },
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
