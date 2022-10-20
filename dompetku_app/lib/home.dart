import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dompetku"),
        backgroundColor: Color.fromARGB(219, 17, 7, 210)
      ),
      body: Container(
        child: Column(
          children: [
            Text("Ini Home"),
          ],
        ),
      ),
    );
  }
}