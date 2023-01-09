import 'package:flutter/material.dart';

import 'pages/desktop/desktop_screen.dart';
import 'pages/mobile/mobile.dart';
import 'pages/tablet/tablet_screen.dart';
import 'responsive.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: MobileScreen(),
        tablet: TabletScreen(),
        desktop: DesktopScreen(),
      ),
    );
  }
}
