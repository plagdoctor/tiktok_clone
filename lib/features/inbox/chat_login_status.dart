import 'package:flutter/material.dart';

class MessengerSign extends StatelessWidget {
  final double size;

  const MessengerSign({super.key, this.size = 20.0});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          color: Colors.green,
          shape: BoxShape.circle,
          border: Border.all(width: 2, color: Colors.white),
        ),
        child: Center(
          child: Text(
            '',
            style: TextStyle(
              color: Colors.white,
              fontSize: size * 0.7,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
