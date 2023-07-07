import 'package:flutter/material.dart';

class QuizLoginScreen extends StatefulWidget {
  const QuizLoginScreen({Key? key}) : super(key: key);

  @override
  _QuizLoginScreenState createState() => _QuizLoginScreenState();
}

class _QuizLoginScreenState extends State<QuizLoginScreen> {
  bool _useTouchId = false;
  String _username = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
              ),
              onChanged: (value) {
                setState(() {
                  _username = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              onChanged: (value) {
                setState(() {
                  _password = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                Checkbox(
                  value: _useTouchId,
                  onChanged: (value) {
                    setState(() {
                      _useTouchId = value ?? false;
                    });
                  },
                ),
                const Text('Use Touch ID'),
              ],
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // TODO: Handle login button press
              },
              child: const Text('Login'),
            ),
          ],
        ),
     ),
);

}
}
