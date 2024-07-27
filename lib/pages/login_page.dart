import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedButton = false;

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
                height: 300,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20), // Add spacing between image and text
              Text(
                "Welcome! $name",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
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
              SizedBox(
                height: 20.0,
              ),
              InkWell(
                  onTap: () async {
                    setState(() {
                      changedButton = true;
                    });
                    await Future.delayed(Duration(microseconds: 900));
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: 80,
                    height: 35,
                    alignment: Alignment.center,
                    child: changedButton
                        ? Icon(Icons.done)
                        : Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 16,
                                color:
                                    changedButton ? Colors.black : Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                    decoration: BoxDecoration(
                      color: changedButton
                          ? Colors.blueGrey
                          : Color.fromARGB(255, 179, 72, 198),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ))
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.pushNamed(context, MyRoutes.homeRoute);
              //   },
              //   child: const Text("Login"),
              //   style: TextButton.styleFrom(minimumSize: Size(30, 30)),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
