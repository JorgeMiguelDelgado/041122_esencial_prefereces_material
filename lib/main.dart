import 'package:esencial_preferences_app/providers/theme_provider.dart';
import 'package:esencial_preferences_app/screens/screens.dart';
import 'package:esencial_preferences_app/share_preferences/preferences.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => ThemeProvider(
          isDarkMode: Preferences.isDarkMode,
        ),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => const HomeScreen(),
        SettingScreen.routeName: (_) => const SettingScreen(),
      },
      theme: Provider.of<ThemeProvider>(context).currentTheme,
    );
  }
}
