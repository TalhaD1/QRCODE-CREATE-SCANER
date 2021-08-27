import 'package:flutter/material.dart';
import 'package:qr_okuyucu/companents/home/about_button.dart';
import 'package:qr_okuyucu/companents/home/create_button.dart';
import 'package:qr_okuyucu/companents/home/scanner_button.dart';
import 'package:qr_okuyucu/constant/color_constant.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ColorConstant.color.homeGround,
      body: SafeArea(
        child: buildHomeContainer(width, height),
      ),
    );
  }

  Container buildHomeContainer(double width, double height) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/backgroundImage.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: buildHomeColumn(),
    );
  }

  Column buildHomeColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [CreateButton(), ScannerButton(), AboutButton()],
    );
  }
}
