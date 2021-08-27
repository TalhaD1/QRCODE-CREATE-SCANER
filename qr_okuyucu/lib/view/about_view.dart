import 'package:flutter/material.dart';
//import 'package:qr_okuyucu/constant/color_constant.dart';
import 'package:qr_okuyucu/constant/text_constant.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  List<String> maddeler = [
    TextConstant.text.madde1,
    TextConstant.text.madde2,
    TextConstant.text.madde3,
    TextConstant.text.madde4,
    TextConstant.text.madde5,
    TextConstant.text.discord,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF262636),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: buildListView(),
        ),
      ),
    );
  }

  ListView buildListView() {
    return ListView(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(15.0),
      children: [
        buildMadde0(),
        SizedBox(height: 20),
        buildMadde1(),
        SizedBox(height: 20),
        buildMadde2(),
        SizedBox(height: 20),
        buildMadde3(),
        SizedBox(height: 50),
        buildMadde4(),
        SizedBox(height: 10),
        buildDiscord()
      ],
    );
  }

  Text buildMadde0() =>
      Text(maddeler[0], style: TextStyle(color: Colors.white));

  Text buildMadde1() =>
      Text(maddeler[1], style: TextStyle(color: Colors.white));

  Text buildMadde2() =>
      Text(maddeler[2], style: TextStyle(color: Colors.white));

  Text buildMadde3() =>
      Text(maddeler[3], style: TextStyle(color: Colors.white));

  Center buildMadde4() {
    return Center(
        child: Text(maddeler[4], style: TextStyle(color: Colors.white)));
  }

  Center buildDiscord() {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.perm_device_information,
            color: Colors.white,
          ),
          SizedBox(width: 5),
          SelectableText(
            maddeler[5],
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
