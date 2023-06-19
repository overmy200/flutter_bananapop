import 'package:flutter/material.dart';
import 'package:popclone/components/button_style.dart';
import 'package:popclone/components/my_textfield.dart';

class Login_Page extends StatelessWidget {
  Login_Page({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  void loginUser() {
    print('you login');
  }

  void signUserIn() {
    print("Please SignIn");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              // logo
              Icon(
                Icons.lock,
                size: 50,
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Welcome to Bananapop this app for test",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              SizedBox(
                height: 40,
              ),
              //textfield
              MyTextfield(
                  controller: usernameController,
                  hintText: 'Username',
                  obsureText: false),
              SizedBox(
                height: 25,
              ),
              //pas textield
              MyTextfield(
                  controller: passwordController,
                  hintText: 'Password',
                  obsureText: true),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text('Dont Have An Account?'),
                    TextButton(onPressed: () {}, child: Text('Sign In')),
                  ],
                ),
              ),

              //login but
              SizedBox(
                height: 50,
              ),

              ElevatedButton(
                  style: buttonPrimary, onPressed: () {}, child: Text('Login')),
              SizedBox(
                height: 10,
              ),

              SizedBox(
                height: 50,
              ),
              //continuse
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[800],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Text("Or contunue with")),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ),
              //google sign
            ],
          ),
        ),
      ),
    );
  }
}
