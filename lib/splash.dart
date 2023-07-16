import 'dart:async';
import 'package:flutter/material.dart';
import 'main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToLogin();
  }

  void _navigateToLogin() {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlutterLogo(
          size: 150,
        ),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  void _loginUser(BuildContext context) {
    // TODO: Implement user login logic here
    // If login is successful, navigate to the home page
    Navigator.pushReplacementNamed(context, '/home');
  }

  void _loginAgency(BuildContext context) {
    // TODO: Implement agency login logic here
    // If login is successful, navigate to the home page
    Navigator.pushReplacementNamed(context, '/home');
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
          children: [
            FlutterLogo(size: 100),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _loginUser(context),
              child: const Text('Login as User'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => _loginAgency(context),
              child: const Text('Login as Agency'),
            ),
          ],
        ),
      ),
    );
  }
}
