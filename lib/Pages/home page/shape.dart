// ignore_for_file: unused_import

import 'package:flutter/material.dart';

class shape_halfon extends CustomClipper<Path> {
  var radius = 5.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width * 1 / 3, 0);
    path.quadraticBezierTo(
        size.width / 2, size.height * 0.45, size.width * 2 / 3, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width * 2 / 3, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height * 0.55, size.width * 1 / 3, size.height);
    path.lineTo(0, size.height);

    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
