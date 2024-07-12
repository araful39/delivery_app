import 'package:delivery_app/bottom_navigation_bar.dart';
import 'package:delivery_app/constans/colors.dart';
import 'package:delivery_app/constans/icon.dart';
import 'package:delivery_app/constans/image.dart';
import 'package:delivery_app/constans/texts.dart';
import 'package:delivery_app/global_widget/custom_elevated_button/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../global_widget/text_form_field/text_form_field.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  SizedBox(
        height: 100,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.call,color: RColores.red,),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    RTexts.loginWithPhone,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),

            CustomElevatedButton(
              bgColor: RColores.red,
              buttonName: RTexts.login,
              onPress: () {
                Get.to(()=> NavigationMenu());
              },
              buttonColor: RColores.white,
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(RImages.deliveryVan),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(RIcons.parcelfly,color: Colors.black,height: 30,),
                  Image.asset(RIcons.vector1,color: Colors.black,),
                ],
              ),
              const Text(RTexts.loginToYourAccount),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  const CustomTextFormField(
                    hintText: 'Enter Your Email',
                  ),
                  const CustomTextFormField(
                    hintText: 'Enter Your Password',
                    suffixIcon: Icons.visibility,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          RTexts.forgetPassword,
                          style: TextStyle(color: Colors.red),
                        ),
                      )
                    ],
                  )
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
