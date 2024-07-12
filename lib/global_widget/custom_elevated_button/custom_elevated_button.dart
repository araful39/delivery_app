import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback onPress;
  final Color? buttonColor;
  final Color? bgColor;
  const CustomElevatedButton(
      {super.key,
      required this.buttonName,
      required this.onPress,
       this.buttonColor,
        this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 10),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(

            onPressed: onPress,
        style: ElevatedButton.styleFrom(
          elevation: 0.3,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: bgColor,),
            child: Text(
              buttonName,
              style: TextStyle(color: buttonColor ?? Colors.black),
            ),
        ),
      ),
    );
  }
}
