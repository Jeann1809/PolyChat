import 'package:flutter/material.dart';
import 'package:polychat/components/button.dart';
import 'package:polychat/components/textfield.dart';

class LoginPage extends StatelessWidget {
  //email and password controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final void Function()? onTap;

  LoginPage({
    super.key,
    required this.onTap,
  });

  //login method
  void login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.message_rounded,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),

            const SizedBox(height: 5),

            //welcome back message
            Text(
              "Welcome!",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 25,
              ),
            ),

            const SizedBox(height: 50),

            //email textfield
            CustomTextField(
              obscureText: false,
              hintText: "Email",
              controller: emailController,
            ),

            const SizedBox(height: 25),

            //password textfield
            CustomTextField(
              obscureText: true,
              hintText: "Password",
              controller: passwordController,
            ),

            const SizedBox(height: 25),

            //login button
            CustomButton(
              text: "Login",
              onTap: login,
            ),

            const SizedBox(height: 25),

            //register
            Text("Do not have an account?"),
            GestureDetector(
              onTap: onTap,
              child: Text(
                "Register now",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
