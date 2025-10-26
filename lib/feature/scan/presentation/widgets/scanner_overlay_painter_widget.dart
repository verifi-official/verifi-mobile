import 'package:flutter/material.dart';

class ScannerOverlayPainter extends CustomPainter {
  final Color color;
  final double cornerLength;
  final double cornerWidth;

  ScannerOverlayPainter({
    required this.color,
    this.cornerLength = 30.0,
    this.cornerWidth = 4.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = cornerWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final cornerOffset = cornerWidth / 2;

    // Top-left corner
    canvas.drawLine(
      Offset(cornerOffset, cornerOffset),
      Offset(cornerLength, cornerOffset),
      paint,
    );
    canvas.drawLine(
      Offset(cornerOffset, cornerOffset),
      Offset(cornerOffset, cornerLength),
      paint,
    );

    // Top-right corner
    canvas.drawLine(
      Offset(size.width - cornerLength, cornerOffset),
      Offset(size.width - cornerOffset, cornerOffset),
      paint,
    );
    canvas.drawLine(
      Offset(size.width - cornerOffset, cornerOffset),
      Offset(size.width - cornerOffset, cornerLength),
      paint,
    );

    // Bottom-left corner
    canvas.drawLine(
      Offset(cornerOffset, size.height - cornerLength),
      Offset(cornerOffset, size.height - cornerOffset),
      paint,
    );
    canvas.drawLine(
      Offset(cornerOffset, size.height - cornerOffset),
      Offset(cornerLength, size.height - cornerOffset),
      paint,
    );

    // Bottom-right corner
    canvas.drawLine(
      Offset(size.width - cornerLength, size.height - cornerOffset),
      Offset(size.width - cornerOffset, size.height - cornerOffset),
      paint,
    );
    canvas.drawLine(
      Offset(size.width - cornerOffset, size.height - cornerLength),
      Offset(size.width - cornerOffset, size.height - cornerOffset),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
