import 'package:delivery_app/constans/colors.dart';
import 'package:delivery_app/constans/image.dart';
import 'package:delivery_app/constans/texts.dart';
import 'package:delivery_app/global_widget/custom_elevated_button/custom_elevated_button.dart';
import 'package:delivery_app/view/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Onboard extends StatelessWidget {
  const Onboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          Expanded(
              child: CustomElevatedButton(
            buttonName: RTexts.skip,
            onPress: () {},
            buttonColor: RColores.red,
            bgColor: RColores.skipButtonColor,
          )),
          Expanded(
              child: CustomElevatedButton(
            buttonName: RTexts.rContinue,
            onPress: () {
              Get.to(()=>Login());
            },
            buttonColor: RColores.white,
            bgColor: RColores.red,
          ))
        ],
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              RImages.bike,
              height: 250,
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 10,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return const CircleAvatar(
                      radius: 8,
                      backgroundColor: RColores.red,
                    );
                  }),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              RTexts.getStartTitle,
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, height: 1),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              RTexts.getStartSub,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(
              height: 35,
            ),
          ],
        ),
      )),
    );
  }
}
