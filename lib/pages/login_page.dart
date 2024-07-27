import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/loved_it.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20), // Add spacing between image and text
              const Text(
                "Welcome",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: const Text("Login"),
                style: TextButton.styleFrom(minimumSize: Size(30, 30)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
