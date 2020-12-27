import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: CevapSayfasi(),
    ),
  );
}

class CevapSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen.shade900,
        title: Center(child: Text('Bana Soru Sor')),
      ),
      body: Cevap(),
    );
  }
}

class Cevap extends StatefulWidget {
  @override
  _CevapState createState() => _CevapState();
}

class _CevapState extends State<Cevap> {
  int cevapNumarasi = 1;
  void cagir() {
    setState(() {
      cevapNumarasi = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          cagir();
        },
        child: Image.asset('images/cevap$cevapNumarasi.png'),
      ),
    );
  }
}
