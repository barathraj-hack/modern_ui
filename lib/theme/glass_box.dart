import 'dart:ui';

import 'package:flutter/material.dart';

class GlassBox extends StatelessWidget {
  final child;

  const GlassBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Container(
            height: 100,
            padding: EdgeInsets.all(2),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
              child: Container(
                alignment: Alignment.bottomCenter,
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
