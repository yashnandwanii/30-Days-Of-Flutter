// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/items.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async{
    var Catjson = await rootBundle.loadString("assets/files/catalog.json"); 
    var decodedData = jsonDecode(Catjson);
    var productsData = decodedData["products"];
  }
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(40, (index) => CatalogModel.products[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Catalog App",
        ),
        titleTextStyle: TextStyle(
            color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        backgroundColor: Colors.white,
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dummyList[index],
              );
            },
          )),
      drawer: MyDrawer(),
    );
  }
}
