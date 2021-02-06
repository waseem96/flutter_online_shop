import 'package:flutter/material.dart';
import 'package:flutter_online_shop/components/custom_bottom_nav_bar.dart';

import '../../enums.dart';
import '../../size_config.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
