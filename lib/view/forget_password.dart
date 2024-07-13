import 'package:delivery_app/constans/colors.dart';
import 'package:delivery_app/global_widget/custom_elevated_button/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Enter OTP",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            const SizedBox(
              height: 35,
            ),
            const Text("We have send to the code"),
            const Text("(+880)0179092*******"),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 70,
                  width: 60,
                  child: Card(
                    elevation: 0.1,
                    color: Colors.black.withOpacity(0.1),
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 60,
                  child: Card(
                    elevation: 0.1,
                    color: Colors.black.withOpacity(0.1),
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 60,
                  child: Card(
                    elevation: 0.1,
                    color: Colors.black.withOpacity(0.1),
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 60,
                  child: Card(
                    elevation: 0.1,
                    color: Colors.black.withOpacity(0.1),
                  ),
                ),

              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("This code will expaire in 50 sec"),
const SizedBox(
  height: 15,
)           , const Text("Ressend OTP"),
            const SizedBox(
              height: 40,
            ),
            CustomElevatedButton(buttonName: "Verify", onPress: (){},buttonColor: Colors.white,bgColor: RColores.red,)
          ],
        ),
      ),
    );
  }
}
