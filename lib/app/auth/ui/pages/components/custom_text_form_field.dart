import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final bool obscureText;
  const CustomTextFormField({
    super.key,
    required this.labelText,
    required this.controller,
    this.validator,
    this.suffixIcon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      child: TextFormField(
        validator: validator,
        autovalidateMode: AutovalidateMode.onUnfocus,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          filled: true,
          suffixIcon: suffixIcon,
          fillColor: Color.fromARGB(255, 218, 218, 218),
          labelText: labelText,
          border: UnderlineInputBorder(borderRadius: BorderRadius.circular(5)),
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        ),
      ),
    );
  }
}
