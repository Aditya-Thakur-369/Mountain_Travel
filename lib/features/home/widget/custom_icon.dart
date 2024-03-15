import 'package:flutter/material.dart';
import 'package:mountain_travel/core/common_color/common_color.dart';

class CustomColouredIcon extends StatelessWidget {
  final IconData icon;
  final Function function;

  const CustomColouredIcon({
    super.key,
    required this.icon,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(35),
      color: yellowcolor,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          function();
        },
        borderRadius: BorderRadius.circular(35),
        child: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white.withOpacity(0.1),
          ),
          child: Center(
            child: Icon(
              icon,
              color: Colors.black,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
