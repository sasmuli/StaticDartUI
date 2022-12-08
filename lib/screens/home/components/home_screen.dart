import 'package:basic_ui/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'navigation_drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: const Text('Home Page'),
      elevation: 0,
    );
  }
}
