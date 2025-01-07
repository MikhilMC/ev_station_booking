import 'package:ev_station_booking/views/home_screen.dart';
import 'package:ev_station_booking/views/register_screen.dart';
import 'package:ev_station_booking/widgets/login_form_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Login"),
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
        imageUrl: "assets/images/login_page_image.png",
        bottomMessage: "If you dont have an account, ",
        formRedirect: RegisterScreen(),
        formDestination: HomeScreen(),
      ),
    );
  }
}
