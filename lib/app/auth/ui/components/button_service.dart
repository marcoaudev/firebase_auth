import 'package:flutter/material.dart';

class ButtonService extends StatelessWidget {
  final String description;
  final Widget icon;

  const ButtonService({
    super.key,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      width: MediaQuery.of(context).size.width * 0.85,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 228, 236, 243),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            SizedBox(width: 10),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  description,
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
