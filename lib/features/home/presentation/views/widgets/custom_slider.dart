import 'package:flutter/material.dart';
import 'dart:math';

import 'package:olly_el3zm/core/utlis/colors.dart';

class HalfCircleSlider extends StatefulWidget {
  final double minValue;
  final double maxValue;
  final ValueChanged<double> onChanged;

  const HalfCircleSlider({
    super.key,
    required this.minValue,
    required this.maxValue,
    required this.onChanged,
  });

  @override
  _HalfCircleSliderState createState() => _HalfCircleSliderState();
}

class _HalfCircleSliderState extends State<HalfCircleSlider> {
  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
        final size = MediaQuery.of(context).size;
        final dx = details.localPosition.dx;
        final dy = details.localPosition.dy;
        final centerX = size.width / 2;
        final centerY = size.height / 2;

        // Calculate the angle based on the touch position
        final angle = atan2(dy - centerY, dx - centerX);

        if (angle >= -pi && angle <= 0) {
          setState(() {
            _value = ((angle + pi) / pi) * (widget.maxValue - widget.minValue) +
                widget.minValue;
            widget.onChanged(_value);
          });
        }
      },
      child: CustomPaint(
        size: const Size(double.infinity, 300),
        painter: _HalfCirclePainter(_value, widget.minValue, widget.maxValue),
      ),
    );
  }
}

class _HalfCirclePainter extends CustomPainter {
  final double value;
  final double minValue;
  final double maxValue;

  _HalfCirclePainter(this.value, this.minValue, this.maxValue);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Appcolors.background
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6;

    final activePaint = Paint()
      ..color = Appcolors.brawn700
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8;

    final thumbPaint = Paint()..color = Appcolors.brown850;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 3;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      pi,
      pi,
      false,
      paint,
    );

    final sweepAngle = ((value - minValue) / (maxValue - minValue)) * pi;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      pi,
      sweepAngle,
      false,
      activePaint,
    );

    final thumbX = center.dx + radius * cos(pi + sweepAngle);
    final thumbY = center.dy + radius * sin(pi + sweepAngle);
    canvas.drawCircle(Offset(thumbX, thumbY), 10, thumbPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
