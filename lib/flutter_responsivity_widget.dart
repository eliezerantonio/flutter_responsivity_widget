import 'package:flutter/material.dart';
import 'dart:math' as math;

class Responsive {
  late double _width;
  late double _height;
  late double _diagonal;
  late bool _isTablet;
   
  static Responsive of(BuildContext context) => Responsive(context);

  Responsive(BuildContext context) {
    final size = MediaQuery.of(context).size;
    _width = size.width;
    _height = size.height;

    //c2+a2+b2=>c=srt(a2+b2)

    _diagonal = math.sqrt(math.pow(_width, 2) + math.pow(_height, 2));

    _isTablet = size.shortestSide >= 600;
  }

  //width in percent
  double wp(double percent) => _width * percent / 100;
  //height in percent
  double hp(double percent) => _height * percent / 100;
  //diagonal in percent
  double dp(double percent) => _diagonal * percent / 100;

  double get width    => _width;
  double get height   => _height;
  double get digonal  => _diagonal;
  bool   get isTablet => _isTablet;
}
