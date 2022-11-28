import 'package:flutter/material.dart';
import 'package:preferences_app/screens/screens.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [

          _DrawerHeader(),

          ListTile(
            leading: Icon(Icons.pages_outlined),
            title: Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(context, HomeScreen.routerName);
            },
          ),

          ListTile(
            leading: Icon(Icons.pages_outlined),
            title: Text('People'),
            onTap: () {

            },
          ),

          ListTile(
            leading: Icon(Icons.pages_outlined),
            title: Text('Settings'),
            onTap: () {
              Navigator.pushReplacementNamed(context, SettingsScreen.routerName);
            },
          )

        ],
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/gfriend1.jpg'),
          fit: BoxFit.cover
        )
      ),
    );
  }
}
