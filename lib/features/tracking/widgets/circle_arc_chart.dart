import 'dart:math';

import 'package:dhiwise_task/util/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const circleArcStart = -(pi + pi / 4);

class CircleArcChart extends HookConsumerWidget {
  const CircleArcChart({
    super.key,
    required this.value,
    required this.maxValue,
    this.child,
  });

  final double value;
  final double maxValue;
  final Widget? child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final animationController =
        useAnimationController(duration: const Duration(milliseconds: 1500))
          ..forward();
    final animation = useAnimation(
      Tween<double>(begin: 0.0, end: -circleArcStart * (value / maxValue))
          .animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeInCubic),
      ),
    );

    return SizedBox(
      height: context.fractionalWidth(fraction: 0.6),
      width: context.fractionalWidth(fraction: 0.6),
      child: CustomPaint(
        painter: CircleArcPainter(
          arcAngle: animation,
          outlinecolor: Colors.white.withOpacity(0.3),
          arcColor: Colors.white,
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}

class CircleArcPainter extends CustomPainter {
  CircleArcPainter({
    required this.arcAngle,
    this.strokeWidth = 10,
    required this.outlinecolor,
    required this.arcColor,
  });

  final double arcAngle;
  final double strokeWidth;
  final Color outlinecolor;
  final Color arcColor;

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTRB(0, 0, size.width, size.height);

    final painter = Paint()
      ..strokeCap = StrokeCap.round
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    canvas.drawArc(
      rect,
      circleArcStart,
      (pi + pi / 2),
      false,
      painter..color = outlinecolor,
    );
    canvas.drawArc(
      rect,
      circleArcStart,
      arcAngle,
      false,
      painter..color = arcColor,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
