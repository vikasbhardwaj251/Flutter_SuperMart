import 'package:flutter/material.dart';
import 'package:super_mart/utils/ext_localization.dart';

import '../utils/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ctx.loc.appName),
        centerTitle: true,
        elevation: 2,
      ),

      drawer: AppDrawer(),

      body: Container(child: SingleChildScrollView()),
    );
  }
}
