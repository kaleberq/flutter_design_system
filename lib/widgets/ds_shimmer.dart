import 'package:flutter/material.dart';
import 'package:flutter_design_system/tokens/ds_colors.dart';
import 'package:flutter_design_system/tokens/ds_radius.dart';
import 'package:shimmer/shimmer.dart';

class DsShimmer extends StatelessWidget {
  final double? width;
  final double? height;
  final double radius;
  final Color baseColor;
  final Color highlightColor;
  final Color containerColor;

  const DsShimmer.rectangular({
    super.key,
    this.width,
    this.height,
    this.radius = DSRadius.md,
    this.containerColor = DSColors.white,
    this.baseColor = DSColors.surfaceLight,
    this.highlightColor = DSColors.lightGrey,
  });

  const DsShimmer.circular({
    super.key,
    this.width,
    this.height,
    this.radius = DSRadius.circular,
    this.containerColor = DSColors.white,
    this.baseColor = DSColors.surfaceLight,
    this.highlightColor = DSColors.lightGrey,
  });

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
        baseColor: baseColor,
        highlightColor: highlightColor,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
      );
}
