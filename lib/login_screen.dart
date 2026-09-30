import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final emailController = TextEditingController();
final passwordController = TextEditingController();
final ageController = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text('Login Page')),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 120),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Email'
              )
            ),
            SizedBox(height: 20,),
            TextFormField(
              controller: passwordController,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Password'
              )
            ),
            SizedBox(height: 20,),
            TextFormField(
              controller: ageController,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Age'
              )
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: () async {
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(16)
                ),
                child: Center(child: Text('Login')),
              ),
            )
          ],
        ),
      ),
    );
  }
}