import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:super_mart/utils/image_constants.dart';
import 'ext_localization.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageConstants.img_cover),
                  fit: BoxFit.cover,
                ),
              ),
              accountName: Text(
                "Vikas Bhardwaj",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),

              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(ImageConstants.img_profile),
              ),

              accountEmail: Text(
                "vikas.bhardwaj@gmail.com",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home),
            title: Text(context.loc.home),
          ),

          Divider(
            height: 1,
            color: Colors.blueAccent,
            indent: 16,
            endIndent: 16,
          ),

          ListTile(
            leading: Icon(CupertinoIcons.mail_solid),
            title: Text(context.loc.contact_us),
          ),

          Divider(
            height: 1,
            color: Colors.blueAccent,
            indent: 16,
            endIndent: 16,
          ),

          ListTile(
            leading: Icon(CupertinoIcons.settings_solid),
            title: Text(context.loc.setting),
          ),

          Divider(
            height: 1,
            color: Colors.blueAccent,
            indent: 16,
            endIndent: 16,
          ),

          ListTile(
            leading: Icon(CupertinoIcons.mail_solid),
            title: Text(context.loc.about),
          ),
        ],
      ),
    );
  }
}
