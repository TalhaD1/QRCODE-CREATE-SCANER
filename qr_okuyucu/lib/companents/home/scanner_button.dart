import 'package:flutter/material.dart';
import 'package:qr_okuyucu/constant/color_constant.dart';
import 'package:qr_okuyucu/constant/text_constant.dart';
import 'package:qr_okuyucu/view/qr_oku_view.dart';

class ScannerButton extends StatefulWidget {
  ScannerButton({Key? key}) : super(key: key);

  @override
  _ScannerButtonState createState() => _ScannerButtonState();
}

class _ScannerButtonState extends State<ScannerButton> {
  void voidState2() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => QRokut()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(primary: Colors.black),
      onPressed: voidState2,
      child: Card(
        color: ColorConstant.color.card,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
        child: Container(
          width: 200,
          height: 50,
          child: Row(
            children: [
              SizedBox(width: 15),
              Icon(Icons.qr_code_scanner),
              SizedBox(width: 15),
              Text(TextConstant.text.card2),
            ],
          ),
        ),
      ),
    );
  }
}
