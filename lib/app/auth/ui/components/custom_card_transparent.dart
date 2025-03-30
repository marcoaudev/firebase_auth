import 'package:flutter/material.dart';

class CustomCardTransparent extends StatelessWidget {
  final List<Widget> children;
  const CustomCardTransparent({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(110, 44, 44, 44),
      margin: EdgeInsets.only(bottom: 100),
      elevation: 10,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.55,
        width: MediaQuery.of(context).size.width * 0.95,
        child: Column(children: children),
      ),
    );
  }
}
