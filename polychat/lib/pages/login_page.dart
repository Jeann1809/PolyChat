import 'package:flutter/material.dart';
import 'package:polychat/components/textfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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

            const SizedBox(height: 25),

            //welcome back message
            Text(
              "Welcome!",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 25,
              ),
            ),

            const SizedBox(height: 25),

            //email textfield
            CustomTextField(
              obscureText: false,
              hintText: "Email",
            ),

            const SizedBox(height: 25),

            //password textfield
            CustomTextField(
              obscureText: true,
              hintText: "Password",
            ),

            //login button

            //register
          ],
        ),
      ),
    );
  }
}
