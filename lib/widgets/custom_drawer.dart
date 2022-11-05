import 'package:esencial_preferences_app/screens/screens.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const _DrawerHeader(),
          ListTile(
            leading: const Icon(Icons.pages_outlined),
            title: const Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(context, HomeScreen.routeName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.person_outline),
            title: const Text('Cuenta Personal'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text('Ajustes'),
            onTap: () {
              //Navigator.pop(context);
              Navigator.pushReplacementNamed(context, SettingScreen.routeName);
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
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/menu.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(),
    );
  }
}
