import 'package:firedart/firedart.dart';
import 'package:flutter/material.dart';

import 'api/signin_api.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  CollectionReference adddata = Firestore.instance.collection('userdata');
  Future<void> sigin() async {
    // ignore: unused_local_variable
    final bool check =
        await SigninAPI().signin(email: _email.text, password: _password.text);
    if (check) {
      print('shukar ay');
    } else
      print('nai chala');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 300,
              child: TextFormField(
                controller: _email,
                decoration: const InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 300,
              child: TextFormField(
                controller: _password,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'password',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: sigin, child: const Text('Login'))
          ],
        ),
      ),
    );
  }
}
