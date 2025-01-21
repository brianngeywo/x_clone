import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

BottomNavigationBarItem bottomNavigationBarItemWidget(String asset) {
  return BottomNavigationBarItem(
    icon: SvgPicture.asset(asset),
    label: '',
  );
}
