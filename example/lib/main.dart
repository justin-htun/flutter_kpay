import 'package:flutter/material.dart';
import 'package:flutter_kpay/flutter_kpay.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    FlutterKPay.onPayStatus().listen((data) {
      print('onPayStatus $data');
    });
  }

  void success(dynamic data) {
    print(data);
  }

  void error(dynamic data) {
    print(data);
  }

  void startPay() {
    FlutterKPay.startPay(
            merchCode: "10000",
            appId: "kp4c1706c8675a45fghjklrskyf",
            signKey: "123",
            orderId: "123",
            amount: 5000,
            title: "title",
            isProduction: false)
        .then((res) {
      print('startPay' + res.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: ElevatedButton(
          onPressed: () {
            startPay();
          },
          child: Text("Test"),
        ),
      ),
    );
  }
}
