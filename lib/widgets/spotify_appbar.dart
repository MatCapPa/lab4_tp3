import 'package:flutter/material.dart';
import 'package:flutter_tp3/providers/theme_provider.dart';
import 'package:flutter_tp3/themes/default_theme.dart';
import 'package:provider/provider.dart';

class SpotifyAppBar extends StatelessWidget implements PreferredSizeWidget {

  SpotifyAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return AppBar(
      title: const Text('Spotify Albums'),
      backgroundColor: themeProvider.temaActual == DefaultTheme.darkTheme
          ? const Color.fromARGB(255, 8, 66, 13) // Color para el modo oscuro
          : const Color.fromARGB(255, 73, 216, 73), // Color para el modo claro
      centerTitle: true,
      leadingWidth: 40,
      toolbarHeight: 80,
      actions: [
        IconButton(
          icon: Icon(
            themeProvider.temaActual == DefaultTheme.darkTheme
                ? Icons.dark_mode
                : Icons.light_mode,
          ),
          onPressed: () {
            themeProvider.toggleTheme();
          },
        ),
      ],
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(80);
}