import 'package:flutter/material.dart';
import 'package:swalis/ui/authentification/login.dart';
import 'package:swalis/ui/cmd_detail/commande_detail.dart';
import 'package:swalis/ui/product/product_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xffec0676),
        backgroundColor: Colors.white,
      ),
      home: Login(),
    );
  }
}
