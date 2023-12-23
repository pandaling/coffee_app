import 'package:corpsec_app/view/gift_card/view/gift_card_index.dart';
import 'package:corpsec_app/view/home_screen/view/home_view.dart';
import 'package:corpsec_app/view/main_screen/model/main_menu_model.dart';
import 'package:corpsec_app/view/menu/view/menu_index.dart';
import 'package:corpsec_app/view/rewards/view/rewards_view_index.dart';
import 'package:flutter/material.dart';

List<MainMenuModel> mainMenus = [
  MainMenuModel(
    icon: Icons.home_rounded,
    inactiveIcon: Icons.home_outlined,
    label: 'Home',
    page: const HomeView(),
  ),
  MainMenuModel(
    icon: Icons.ac_unit_rounded,
    inactiveIcon: Icons.ac_unit_outlined,
    label: 'Menu',
    page: const Menuview(),
  ),
  MainMenuModel(
    icon: Icons.menu_book_rounded,
    inactiveIcon: Icons.menu_book_outlined,
    label: 'Rewards',
    page: const RewardsView(),
  ),
  MainMenuModel(
    icon: Icons.card_giftcard_rounded,
    inactiveIcon: Icons.card_giftcard_outlined,
    label: 'Pays',
    page: const GiftCardView(),
  ),
  MainMenuModel(
    icon: Icons.people_alt_rounded,
    inactiveIcon: Icons.people_alt_outlined,
    label: 'Account',
    page: const HomeView(),
  ),
];
