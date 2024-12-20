import 'package:ev_station_booking/views/login_screen.dart';
import 'package:ev_station_booking/widgets/login_form_widget.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Register"),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: const LoginFormWidget(
        imageUrl: "assets/images/register_screen_image.png",
        bottomMessage: "If you already have an account, ",
        formRedirect: LoginScreen(),
        formDestination: LoginScreen(),
      ),
    );
  }
}
