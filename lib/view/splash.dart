import 'package:delivery_app/constans/colors.dart';
import 'package:delivery_app/constans/icon.dart';
import 'package:delivery_app/constans/image.dart';
import 'package:delivery_app/view/onboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    navigaT();
    super.initState();

  }
  void navigaT(){
    Future.delayed(const Duration(seconds: 3),()=> Get.to(()=>const Onboard()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RColores.splashColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(RImages.deliveryVan),
            const SizedBox(
              height: 10,
            ),
            Image.asset(RIcons.parcelfly),
         
            Image.asset(RIcons.vector1)

          ],
        ),
      ),
    );
  }
}
