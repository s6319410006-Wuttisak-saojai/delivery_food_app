//delivery_food_splash_ui

import 'package:delivery_food_app/views/delivery_food_home_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveryFoodSplashUI extends StatefulWidget {
  const DeliveryFoodSplashUI({super.key});

  @override
  State<DeliveryFoodSplashUI> createState() => _DeliveryFoodSplashUIState();
}

class _DeliveryFoodSplashUIState extends State<DeliveryFoodSplashUI> {
  //ทำ SplashScreen
  @override
  void initState() {
    Future.delayed(
        Duration(
          seconds: 3,
        ), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => DeliveryFoodHomeUI()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/fastfood.png',
                  ),
                  fit: BoxFit.cover,
                ),
                border: Border.all(color: Colors.yellow),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.05,
            ),
            Text(
              'สายด่วนชวนกิน',
              style: GoogleFonts.kanit(
                  fontSize: MediaQuery.of(context).size.width * 0.08,
                  color: Colors.white),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.05,
            ),
            Text(
              'หิวเมื่อไหร่ก็แวะมา\nDelivery Food App',
              style: GoogleFonts.itim(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                  color: Colors.yellow),
            ),
          ],
        ),
      ),
    );
  }
}
