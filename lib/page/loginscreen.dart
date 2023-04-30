import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:rs_kita/components/my_button.dart';
import 'package:rs_kita/components/my_textfield.dart';
import 'package:rs_kita/components/square_title.dart';

class loginscreen extends StatelessWidget {
  loginscreen({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

//sign user method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),

              Text(
                'Selamat Datang !',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 32,
                ),
              ),

              SizedBox(height: 20),

              Image.asset(
                'images/LoginScreen.png',
                height: 250,
              ),
              SizedBox(height: 20),
              Text(
                'You can search c ourse, apply course and find scholarship for abroad studies',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 30),

              //username textfield
              MyTextField(
                controller: usernameController,
                hintText: "E-mail",
                prefixIcon: Icon(Icons.email),
                obsecureText: false,
              ),

              SizedBox(height: 10),

              // password
              MyTextField(
                controller: passwordController,
                hintText: "password",
                prefixIcon: Icon(Icons.lock),
                obsecureText: true,
              ),

              SizedBox(height: 10),

              // forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),

              //sign in button
              MyButton(
                onTap: signUserIn,
              ),

              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.blue,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or Continue With',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              // google button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [SquareTitle(imagePath: 'images/google.png')],
              ),

              SizedBox(
                height: 60,
              ),

              //not a member? register
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Belum punya akun RS KU Mobile?',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'DAFTAR',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
