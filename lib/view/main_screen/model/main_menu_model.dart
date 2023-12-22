import 'package:flutter/material.dart';

class MainMenuModel {
  final IconData? icon;
  final IconData? inactiveIcon;
  final String? label;
  final Widget? page;

  MainMenuModel({
    this.icon,
    this.inactiveIcon,
    this.label,
    this.page,
  });
}
