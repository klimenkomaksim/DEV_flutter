import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class FakeElement extends StatelessWidget {
  const FakeElement({
    this.height,
    this.width,
    this.decoration,
    this.margin,
    Key? key,
  }) : super(key: key);

  final double? height;
  final double? width;
  final BoxDecoration? decoration;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    final color = decoration == null ? Colors.grey[300] : null;

    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        height: height,
        width: width,
        decoration: decoration,
        color: color,
        margin: margin,
      ),
    );
  }
}
