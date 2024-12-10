import 'package:flutter/material.dart';

class ProgressData {
  final double progress;
  final IconData? icon;
  final String? text;
  final String heading;
  final String subHeading;

  ProgressData({
    required this.progress,
    this.icon,
    this.text,
    required this.heading,
    required this.subHeading,
  });
}
