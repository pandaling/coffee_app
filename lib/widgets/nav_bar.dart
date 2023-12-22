
import 'package:corpsec_app/styles/palette.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    super.key,
    required this.menu,
    required this.selectedIndex,
    required this.onTap,
  });

  final List menu;
  final int selectedIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    final double additionalBottomPadding =
        MediaQuery.of(context).padding.bottom;

    final height = kBottomNavigationBarHeight + additionalBottomPadding;

    return Material(
      // color: ,
      // elevation: 0.0,
      // borderRadius: ,
      child: SizedBox(
        height: height,
        width: MediaQuery.of(context).size.width,
        child: TabBar(
          indicatorPadding: EdgeInsets.zero,
          indicatorColor: Colors.transparent,
          unselectedLabelColor: Colors.grey,
          labelColor: Palette.primary,
          labelStyle: const TextStyle(
            fontSize: 10.0,
            fontWeight: FontWeight.w400,
          ),
          labelPadding: EdgeInsets.zero,
          onTap: onTap,
          tabs: menu
              .asMap()
              .map(
                (key, value) => MapEntry(
                  key,
                  Tab(
                    iconMargin: const EdgeInsets.only(bottom: 5.0),
                    icon: Icon(
                      key == selectedIndex ? value.icon : value.inactiveIcon,
                      color:
                          key == selectedIndex ? Palette.primary : Colors.grey,
                    ),
                    child: Text(
                      value.label,
                      style: TextStyle(
                        color: key == selectedIndex
                            ? Palette.primary
                            : Colors.grey,
                      ),
                    ),
                  ),
                ),
              )
              .values
              .toList(),
        ),
      ),
    );
  }
}