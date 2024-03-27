import 'package:dictionary_app/components/utils.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final double radius;
  final double vPadding;
  final double hPadding;
  final String text;
  final TextStyle style;
  final Color color;
  void Function()? onPress;
  MyButton(
      {super.key,
      this.radius = 20,
      this.vPadding = 14,
      this.hPadding = 120,
      this.color = Colors.black,
      this.style = const TextStyle(
        fontSize: 19,
        color: Colors.white,
      ),
      this.text = "clickme",
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: hPadding, vertical: vPadding),
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: color,
        ),
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }
}
