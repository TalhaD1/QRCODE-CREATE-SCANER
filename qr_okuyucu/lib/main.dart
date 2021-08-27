import 'package:flutter/material.dart';
import 'package:qr_okuyucu/view/home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QR Kod Okuyucu',
      home: HomeView(),
    );
  }
}
