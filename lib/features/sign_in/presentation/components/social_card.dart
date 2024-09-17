import 'package:flutter/material.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    required this.icon,
    required this.press,
    super.key,
  });

  final Widget icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 56,
        width: 56,
        decoration: const BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: icon,
      ),
    );
  }
}

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Don’t have an account? ',
          style: TextStyle(color: Color(0xFF757575)),
        ),
        GestureDetector(
          onTap: () {
            // Handle navigation to Sign Up
          },
          child: const Text(
            'Sign Up',
            style: TextStyle(
              color: Color(0xFFFF7643),
            ),
          ),
        ),
      ],
    );
  }
}
