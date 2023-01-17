import 'package:chatin/ui/screens/auth/login_screens.dart';
import 'package:flutter/material.dart';
import 'package:zego_zimkit/zego_zimkit.dart';

void main() {
  ZIMKit().init(
      appID: 34323118,
      appSign:
          'aab95232e5461438e6ea806b671286c43b813b660f7f82d1258f46a202ff8adb');
  runApp(const mainPage());
}

class mainPage extends StatelessWidget {
  const mainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScrenns(),
    );
  }
}
