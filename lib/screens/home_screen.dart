import 'package:esencial_preferences_app/share_preferences/preferences.dart';
import 'package:esencial_preferences_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'Home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Esencial Preferences'),
        centerTitle: true,
      ),
      drawer: const DrawerMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('isDarkMoe: ${Preferences.isDarkMode}'),
          const Divider(),
          Text('Género: ${Preferences.gender}'),
          const Divider(),
          Text('Nombre de usuario: ${Preferences.name} '),
          const Divider(),
        ],
      ),
    );
  }
}
