import 'package:flutter/material.dart';
import 'package:flutter_design_system/tokens/ds_colors.dart';
import 'package:flutter_design_system/tokens/ds_radius.dart';
import 'package:shimmer/shimmer.dart';

class DSShimmer extends StatelessWidget {
  final double? width;
  final double? height;
  final double radius;
  final Color baseColor;
  final Color highlightColor;
  final Color contrainerColor;

  const DSShimmer.rectangular({
    super.key,
    this.width,
    this.height,
    this.radius = DSRadius.md,
    this.contrainerColor = DSColors.white,
    this.baseColor = DSColors.surfaceLight,
    this.highlightColor = DSColors.lightGrey,
  });

  const DSShimmer.circular({
    super.key,
    this.width,
    this.height,
    this.radius = DSRadius.circular,
    this.contrainerColor = DSColors.white,
    this.baseColor = DSColors.surfaceLight,
    this.highlightColor = DSColors.lightGrey,
  });

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
    baseColor: baseColor,
    highlightColor: highlightColor,
    child: Container(
      height: height,
      constraints: BoxConstraints(maxWidth: width ?? 0,),
      decoration: BoxDecoration(
        color: contrainerColor,
        borderRadius: BorderRadius.circular(radius),
      ),
    ),
  );
}
