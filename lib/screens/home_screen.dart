import 'package:flutter/material.dart';

import '../helpers/responsive.dart';
import '../widgets/drawer.dart';
import '../widgets/navbar_desktop.dart';
import '../widgets/navbar_mobile.dart';
import 'desktop.dart';
import 'mobile.dart';

class HomeScreen extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? mobileTopBar(scaffoldKey)
          : PreferredSize(
              preferredSize: Size(size.width, 1000),
              child: NavBarDesktop(),
            ),
      drawer: MobileMenu(),
      body: ResponsiveWidget(
        largeScreen: DesktopScreen(),
        smallScreen: MobileScreen(),
      ),
    );
  }
}
