import 'package:chatin/ui/screens/home%20page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:zego_zimkit/zego_zimkit.dart';

class LoginScrenns extends StatefulWidget {
  const LoginScrenns({super.key});

  @override
  State<LoginScrenns> createState() => _LoginScrennsState();
}

class _LoginScrennsState extends State<LoginScrenns> {
  final userId = TextEditingController();
  final username = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 350,
            ),
            TextFormField(
              controller: userId,
              decoration: const InputDecoration(labelText: 'User Id'),
            ),
            TextFormField(
              controller: username,
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () async {
                  await ZIMKit()
                      .connectUser(id: userId.text, name: username.text);
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const HomePage()));
                },
                child: const Text("Login"))
          ],
        ),
      ),
    );
  }
}
