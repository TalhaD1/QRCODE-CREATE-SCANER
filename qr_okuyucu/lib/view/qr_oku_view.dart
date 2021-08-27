import 'dart:io';

import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRokut extends StatefulWidget {
  QRokut({Key? key}) : super(key: key);

  @override
  _QRokutState createState() => _QRokutState();
}

class _QRokutState extends State<QRokut> {
  final qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  Barcode? barcode;

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  void reassemble() async {
    super.reassemble();
    if (Platform.isAndroid) {
      await controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width * 0.8;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          buildQrView(context, width),
          Positioned(
            bottom: 20,
            child: buildContainer(),
          )
        ],
      ),
    );
  }

  QRView buildQrView(BuildContext context, double width) {
    return QRView(
      key: qrKey,
      onQRViewCreated: onQRViewCreated,
      overlay: QrScannerOverlayShape(
        borderWidth: 10.0,
        borderRadius: 10.0,
        borderLength: 20.0,
        borderColor: Theme.of(context).accentColor,
        cutOutSize: width,
      ),
    );
  }

  Container buildContainer() {
    return Container(
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white24,
      ),
      child: buildFittedBox(),
    );
  }

  FittedBox buildFittedBox() {
    return FittedBox(
      fit: BoxFit.cover,
      child: buildScannerData(),
    );
  }

  SelectableText buildScannerData() {
    return SelectableText(
      barcode != null ? '${barcode!.code}' : 'QR Kod Okutun',
      maxLines: 3,
      style: TextStyle(color: Colors.white),
    );
  }

  void onQRViewCreated(QRViewController controller) {
    setState(() => this.controller = controller);
    controller.scannedDataStream.listen((barcode) {
      setState(() {
        this.barcode = barcode;
      });
    });
  }
}
