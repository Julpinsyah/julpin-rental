import 'package:flutter/material.dart';

class IkonMobile extends StatelessWidget {
  final Widget icon;
  final String text;

  const IkonMobile({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: <Widget>[
          icon,
          const SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
