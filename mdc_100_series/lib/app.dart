// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'about.dart';
import 'backdrop.dart';
import 'cart.dart';
import 'category_menu_page.dart';
import 'colors.dart';
import 'home.dart';
import 'login.dart';
import 'model/product.dart';
import 'product_details.dart';
import 'supplemental/cut_corners_border.dart';

final ThemeData _kShrineTheme = _buildShrineTheme();

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light(useMaterial3: true);
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: kShrineBlue,
      onPrimary: kShrineSurfaceWhite,
      secondary: kShrineSurfaceWhite,
      error: kShrineErrorRed,
    ),
    textTheme: _buildShrineTextTheme(base.textTheme),
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: kShrineBlue,
    ),
    appBarTheme: const AppBarTheme(
      foregroundColor: kShrineSurfaceWhite,
      backgroundColor: kShrineBlue,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: CutCornersBorder(),
      focusedBorder: CutCornersBorder(
        borderSide: BorderSide(
          width: 2.0,
          color: kShrineSurfaceWhite,
        ),
      ),
      floatingLabelStyle: TextStyle(
        color: kShrineSurfaceWhite,
      ),
    ),
  );
}

TextTheme _buildShrineTextTheme(TextTheme base) {
  return base
      .copyWith(
        headlineSmall: base.headlineSmall!.copyWith(
          fontWeight: FontWeight.w500,
        ),
        titleLarge: base.titleLarge!.copyWith(
          fontSize: 18.0,
        ),
        bodySmall: base.bodySmall!.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
        bodyLarge: base.bodyLarge!.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: colorBlack,
        bodyColor: colorBlack,
      );
}

class ShrineApp extends StatefulWidget {
  const ShrineApp({Key? key}) : super(key: key);

  @override
  _ShrineAppState createState() => _ShrineAppState();
}

class _ShrineAppState extends State<ShrineApp> {
  Category _currentCategory = Category.all;

  void _onCategoryTap(Category category) {
    setState(() {
      _currentCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'RECO - MECHA',
      theme: _kShrineTheme,
    );
  }

  late final GoRouter _router = GoRouter(
    initialLocation: '/',
    redirect: (context, state) {
      // Handle deep links with custom scheme
      final uri = state.uri;
      if (uri.scheme == 'reco-mecha') {
        // Check if user used double slash (shopmate://product/3)
        if (uri.host.isNotEmpty) {
          // Reconstruct the path: /host/path
          // shopmate://product/3 -> /product/3
          return '/${uri.host}${uri.path}';
        }
        // Single slash (shopmate:/product/3) - path is already correct
        return uri.path;
      }
      return null; // No redirect needed
    },
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/',
        builder: (context, state) => Backdrop(
          currentCategory: _currentCategory,
          frontLayer: HomePage(
            key: ValueKey(_currentCategory),
            category: _currentCategory,
          ),
          backLayer: CategoryMenuPage(
            currentCategory: _currentCategory,
            onCategoryTap: _onCategoryTap,
          ),
          frontTitle: const Text('RECO - MECHA'),
          backTitle: const Text('MENU'),
        ),
        // The cart and about screens can remain nested as they are opened
        // from the home screen's context.
        routes: [
          GoRoute(
            path: 'cart',
            builder: (context, state) => const CartScreen(),
          ),
          GoRoute(
            path: 'about',
            builder: (context, state) => const AboutScreen(),
          ),
        ],
      ),
      // Make the product route a top-level route
      GoRoute(
        path: '/product/:id',
        builder: (context, state) {
          final id = int.parse(state.pathParameters['id']!);
          return ProductDetailScreen(productId: id);
        },
      ),
    ],
  );
}

// TODO: Build a Shrine Theme (103)
// TODO: Build a Shrine Text Theme (103)
