// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome Pranjul "),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
