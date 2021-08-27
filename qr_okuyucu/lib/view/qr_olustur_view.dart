import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qr_okuyucu/constant/color_constant.dart';

class QrOlustur extends StatefulWidget {
  QrOlustur({Key? key}) : super(key: key);

  @override
  _QrOlusturState createState() => _QrOlusturState();
}

class _QrOlusturState extends State<QrOlustur> {
  late TextEditingController controller;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstant.color.scannerGround,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(child: buildColumn()),
        ),
      ),
    );
  }

  Column buildColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 30),
        buildQrImage(),
        SizedBox(height: 30),
        buildTextField()
      ],
    );
  }

  QrImage buildQrImage() {
    return QrImage(
      data: controller.text,
      backgroundColor: Colors.white,
      size: 200,
    );
  }

  Padding buildTextField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        style: TextStyle(color: Colors.white),
        controller: controller,
        decoration: buildInputDecoration(),
      ),
    );
  }

  InputDecoration buildInputDecoration() {
    return InputDecoration(
      border: OutlineInputBorder(),
      hintText: 'Metin Giriniz:',
      hintStyle: TextStyle(color: Colors.white),
      suffix: buildIconButton(),
    );
  }

  IconButton buildIconButton() {
    return IconButton(
      onPressed: () {
        setState(() {});
      },
      icon: Icon(
        Icons.done,
        color: Colors.white,
      ),
    );
  }
}
