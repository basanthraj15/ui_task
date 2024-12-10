import 'package:flutter/material.dart';
import 'package:task_app/utils/Colors.dart';

class PercentageSemiCircle extends StatelessWidget {
  final double percentage; 

  const PercentageSemiCircle({super.key, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(60, 30), 
      painter: SemiCirclePainter(percentage),
    );
  }
}

class SemiCirclePainter extends CustomPainter {
  final double percentage;

  SemiCirclePainter(this.percentage);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6;

    paint.color = AppColors.purple;
    canvas.drawArc(
      Rect.fromCenter(
          center: Offset(size.width / 2, size.height),
          width: size.width * 0.9,
          height: size.height * 1.8),
      -3.14,
      3.14 * percentage / 100,
      false,
      paint,
    );

    paint.color = AppColors.red;
    canvas.drawArc(
      Rect.fromCenter(
          center: Offset(size.width / 2, size.height),
          width: size.width * 0.9,
          height: size.height * 1.8),
      -3.14 + (3.14 * percentage / 100),
      3.14 * (1 - percentage / 100),
      false,
      paint,
    );

    final textPainter = TextPainter(
      text: TextSpan(
        text: '$percentage%\nAccuracy',
        style: const TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(
      minWidth: 0,
      maxWidth: size.width,
    );

    textPainter.paint(
      canvas,
      Offset(
        (size.width - textPainter.width) / 2,
        size.height - textPainter.height / 2,
      ),
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
