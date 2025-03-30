import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color color;
  final void Function() onPressed;
  const CustomButton({
    super.key,
    required this.title,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      width: MediaQuery.of(context).size.width * 0.85,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        onPressed: onPressed,
        child: Text(title, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
