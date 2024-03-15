import 'package:flutter/material.dart';
import 'package:mountain_travel/core/common_color/common_color.dart';

class MasterPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.strokeWidth = 2;
    paint.color = primarycolor;
    paint.maskFilter = const MaskFilter.blur(BlurStyle.normal, 92);

    canvas.drawCircle(Offset(size.width / 1.2, 80), 150, paint);

    Paint paint1 = Paint();
    paint1.strokeWidth = 2;
    paint1.color = primarycolor;
    paint1.maskFilter = const MaskFilter.blur(BlurStyle.normal, 92);

    canvas.drawCircle(Offset(size.width / 1.2, 750), 180, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
