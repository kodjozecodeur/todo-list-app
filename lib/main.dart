import 'package:flutter/material.dart';
import 'package:todolist/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 247, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/loginCover.png'),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'Want to learn',
              style: TextStyle(
                color: Color(0xFF00131D),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            // const SizedBox(
            //   height: 20.0,
            // ),
            const Text(
              'something new?',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 23.0),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return const HomePage();
                  }),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1698d9),
                padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                shape: const StadiumBorder(),
                minimumSize: const Size(300, 40),
              ),
              child: const Text(
                'I\'m ready to start',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              'Already have an account? Sign In',
              style: TextStyle(color: Color.fromARGB(255, 184, 186, 188)),
            ),
          ],
        ),
      ),
    );
  }
}
