import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:matule/layers/presentation/screens/build_screen.dart';
import 'package:matule/layers/presentation/screens/cart_screen.dart';
import 'package:matule/layers/presentation/screens/create_user_screen.dart';
import 'package:matule/layers/presentation/screens/favorite_screen.dart';
import 'package:matule/layers/presentation/screens/forgot_password_srceen.dart';
import 'package:matule/layers/presentation/screens/home_screen.dart';
import 'package:matule/layers/presentation/screens/language_screen.dart';
import 'package:matule/layers/presentation/screens/notifications_screen.dart';
import 'package:matule/layers/presentation/screens/outdoor_screen.dart';
import 'package:matule/layers/presentation/screens/profile_screen.dart';
import 'package:matule/layers/presentation/screens/search_screen.dart';
import 'package:matule/layers/presentation/screens/settings_screen.dart';

import 'package:go_router/go_router.dart';
import 'package:matule/layers/presentation/shared/ui/drawer_menu.dart';

class RouterConfigGO {
  final GoRouter router = GoRouter(
    initialLocation: '/signin',
    routes: [
      GoRoute(
        path: '/pass',
        builder: (context, state) => ForgotPasswordsrceen(),
      ),
      GoRoute(path: '/create', builder: (context, state) => CreateUser()),

      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ZoomDrawer(
            controller: ZoomDrawerController(),
            menuScreen: DrawerMenu(),
            mainScreen: BuildScreen(navigationShell: navigationShell),
            borderRadius: 24.0,
            showShadow: false,
            angle: -12.0,
            slideWidth: MediaQuery.of(context).size.width * 0.65,
          );
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(path: '/home', builder: (context, state) => HomeScreen()),
              GoRoute(
                path: '/outdoor',
                builder: (context, state) => OutdoorScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/favorite',
                builder: (context, state) => FavoriteScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/notifications',
                builder: (context, state) => NotificationsScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/profile',
                builder: (context, state) => ProfileScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(path: '/cart', builder: (context, state) => CartScreen()),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/search',
                builder: (context, state) => SearchScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/settings',
                builder: (context, state) => SettingsScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/language',
                builder: (context, state) => LanguageScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
