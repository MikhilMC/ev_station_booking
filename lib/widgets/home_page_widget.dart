import 'package:flutter/material.dart';

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/prifile_cover.jpg"),
        const SizedBox(
          height: 20.0,
        ),
        const Text(
          "IOCL - Jyothi Charging Station",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
