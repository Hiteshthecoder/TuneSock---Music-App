import 'package:tunesock/Screens/About/about.dart';
import 'package:tunesock/Screens/Home/home.dart';
import 'package:tunesock/Screens/Library/downloads.dart';
import 'package:tunesock/Screens/Library/nowplaying.dart';
import 'package:tunesock/Screens/Library/playlists.dart';
import 'package:tunesock/Screens/Library/recent.dart';
import 'package:tunesock/Screens/Library/stats.dart';
import 'package:tunesock/Screens/Login/auth.dart';
import 'package:tunesock/Screens/Login/pref.dart';
import 'package:tunesock/Screens/Settings/new_settings_page.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

Widget initialFuntion() {
  return Hive.box('settings').get('userId') != null ? HomePage() : AuthScreen();
}

final Map<String, Widget Function(BuildContext)> namedRoutes = {
  '/': (context) => initialFuntion(),
  '/pref': (context) => const PrefScreen(),
  '/setting': (context) => const NewSettingsPage(),
  '/about': (context) => AboutScreen(),
  '/playlists': (context) => PlaylistScreen(),
  '/nowplaying': (context) => NowPlaying(),
  '/recent': (context) => RecentlyPlayed(),
  '/downloads': (context) => const Downloads(),
  '/stats': (context) => const Stats(),
};
