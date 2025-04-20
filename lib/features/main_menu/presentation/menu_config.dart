import 'package:flutter/material.dart';
import 'pages/home_page.dart'; // TODO: Create this file
import 'pages/profile_page.dart'; // TODO: Create this file
import 'pages/settings_page.dart'; // TODO: Create this file

class MenuItemConfig {
  final IconData icon;
  final String label;
  final Widget view;

  const MenuItemConfig({
    required this.icon,
    required this.label,
    required this.view,
  });
}

// TODO: Define your menu items here
// Example menu items
const List<MenuItemConfig> bottomNavItems = [
  MenuItemConfig(icon: Icons.home, label: 'Home', view: HomeView()),
  MenuItemConfig(icon: Icons.person, label: 'Profile', view: ProfileView()),
  MenuItemConfig(icon: Icons.settings, label: 'Settings', view: SettingsView()),
];

List<BottomNavigationBarItem> get bottomNavBarItems =>
    bottomNavItems
        .map((item) => BottomNavigationBarItem(icon: Icon(item.icon), label: item.label))
        .toList();
