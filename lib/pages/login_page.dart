import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:uts_aplikasi_bergerak/components/my_button.dart';
import 'package:uts_aplikasi_bergerak/components/my_textfield.dart';
import 'package:uts_aplikasi_bergerak/pages/intro_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[400],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              // logo
              Image.asset(
                "assets/images/game.png",
                height: 170,
                width: 250,
              ),

              const SizedBox(height: 50),

              // Text
              const Text(
                'Adorn your Life with Game',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,   
                ),
              ),

              const SizedBox(height: 25),

              // username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Masukan Username',
                obscureText: false,
              ),

              const SizedBox(height: 15),

              //password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Masukan Password',
                obscureText: true,
              ),

              const SizedBox(height: 15),

              //Tombol Sign in
              MyButton(
                onTap: signUserIn,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
