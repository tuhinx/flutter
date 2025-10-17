import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme/theme_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final themeController = Provider.of<ThemeController>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Day / Night Theme App'),
        actions: [
          Switch(
            value: themeController.isDarkMode,
            onChanged: (val) {
              themeController.toggleTheme();
            },
          )
        ],
      ),
      body: Center(
        child: Text(
          themeController.isDarkMode
              ? 'Dark Mode ON 🌙'
              : 'Light Mode ON ☀️',
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
