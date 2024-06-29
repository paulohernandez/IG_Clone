import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned(
          right: -20,
          child: CustomPaint(
            painter: CirclePainter(color: Color(0xFF74B0B9), radius: 100),
          ),
        ),
        const Positioned(
          child: CustomPaint(
            painter: CirclePainter(color: Color(0xFF74B0B9), radius: 80),
            child: CustomPaint(
              painter: CirclePainter(color: Color(0xFFFFFFFF), radius: 40),
            ),
          ),
        ),
        const Positioned(
          top: -20,
          left: 110,
          child: CustomPaint(
            painter: CirclePainter(color: Color(0xFFDEF4F8), radius: 100),
          ),
        ),
        Center(
          child: Text(
            'Hallo',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ],
    );
  }
}

class CirclePainter extends CustomPainter {
  const CirclePainter({required this.color, required this.radius});
  final Color color;
  final double radius;
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    canvas.drawCircle(Offset.zero, radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
