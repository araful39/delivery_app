import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final IconData? suffixIcon;
  const CustomTextFormField({
    super.key, required this.hintText, this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: Icon(suffixIcon),
            border: const OutlineInputBorder(

            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.black
                )
            )
        ),

      ),
    );
  }
}