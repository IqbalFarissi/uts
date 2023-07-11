import 'package:flutter/material.dart';
import 'package:uts_aplikasi_bergerak/pages/intro_page.dart';

class MyButton extends StatelessWidget {

  final Function()? onTap;

  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context, 
        MaterialPageRoute(
          builder: (context) => IntroPage()
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8)
        ),
        child: const Center(
          child: Text(
            "Sign In",
            style: TextStyle(color: 
            Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
