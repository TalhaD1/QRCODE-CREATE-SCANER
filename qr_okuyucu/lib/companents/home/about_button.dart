import 'package:flutter/material.dart';
import 'package:qr_okuyucu/constant/color_constant.dart';
import 'package:qr_okuyucu/constant/text_constant.dart';
import 'package:qr_okuyucu/view/about_view.dart';

class AboutButton extends StatefulWidget {
  const AboutButton({Key? key}) : super(key: key);

  @override
  _AboutButtonState createState() => _AboutButtonState();
}

class _AboutButtonState extends State<AboutButton> {
  void voidState() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => About(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(primary: Colors.black),
      onPressed: voidState,
      child: buildCard(),
    );
  }

  Card buildCard() {
    return Card(
      color: ColorConstant.color.card,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      child: buildCardContainer(),
    );
  }

  Container buildCardContainer() {
    return Container(
      width: 200,
      height: 50,
      child: buildRow(),
    );
  }

  Row buildRow() {
    return Row(
      children: [
        SizedBox(width: 15),
        Icon(Icons.insert_emoticon),
        SizedBox(width: 15),
        Text(TextConstant.text.card3),
      ],
    );
  }
}
