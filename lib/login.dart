import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 40),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'example@gmail.com',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Your password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    // TODO: Navigate to user registration screen
                  },
                  child: const Text('Register as User'),
                ),
                TextButton(
                  onPressed: () {
                    // TODO: Navigate to agency registration screen
                  },
                  child: const Text('Register as Agency'),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement user login logic
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                minimumSize: MaterialStateProperty.all<Size>(
                  const Size(double.infinity, 48),
                ),
              ),
              child: const Text('Login'),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 25,
                  child: Image.asset(
                    'assets/images/google_logo.png',
                    height: 25,
                  ),
                ),
                const SizedBox(width: 10),
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 25,
                  child: Image.asset(
                    'assets/images/facebook_logo.png',
                    height: 25,
                  ),
                ),
                const SizedBox(width: 10),
                const SizedBox.shrink(), // Remove the text widget
              ],
            ),
          ],
        ),
      ),
    );
  }
}
