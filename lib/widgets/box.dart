import 'package:flutter/material.dart';
import 'package:group_lesson_app/utils/utils.dart';

class Box extends StatelessWidget {
  final double size;
  final String? assetImageUrl;
  final bool shouldHaveImageBackground;
  final Widget? child;
  final double? curveRadius;
  final Color? color;

  const Box({
    Key? key,
    required this.size,
    this.assetImageUrl,
    required this.shouldHaveImageBackground,
    this.child,
    this.curveRadius,
    this.color,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(curveRadius ?? 17),
        color: color ?? Colors.white,
        image: shouldHaveImageBackground
            ? DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(assetImageUrl!),
              )
            : null,
      ),
      child: !shouldHaveImageBackground ? child ?? SizedBox() : null,
    );
  }
}
