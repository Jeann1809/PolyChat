import 'package:flutter/material.dart';
import 'package:polychat/auth/auth_service.dart';
import 'package:polychat/components/button.dart';
import 'package:polychat/components/textfield.dart';

class RegisterPage extends StatelessWidget {
  //email and password controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final void Function()? onTap;

  RegisterPage({
    super.key,
    required this.onTap,
  });

  //register method
  void register(BuildContext context) {
    //get auth service
    final _auth = AuthService();

    //passwords are equal
    if (passwordController.text == confirmPasswordController.text) {
      try {
        _auth.signUpWithEmailPassword(
          emailController.text,
          passwordController.text,
        );
      } catch (error) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(error.toString()),
          ),
        );
      }
    } //paswords are not equal

    else {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text("Passwords do not match"),
        ),
      );
    }
  }

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
              Icons.check_box,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),

            const SizedBox(height: 5),

            //welcome back message
            Text(
              "Lets create an Account!",
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

            //Confirm password textfield
            CustomTextField(
              obscureText: true,
              hintText: "Confirm Password",
              controller: confirmPasswordController,
            ),

            const SizedBox(height: 25),

            //register button
            CustomButton(
              text: "Register",
              onTap: () => register(context),
            ),

            const SizedBox(height: 25),

            //register
            Text("Already have an account?"),
            GestureDetector(
              onTap: onTap,
              child: Text(
                "Login now",
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
