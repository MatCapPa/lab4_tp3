import 'package:flutter/material.dart';
import 'package:flutter_tp3/helpers/preferences.dart';
import 'package:flutter_tp3/providers/theme_provider.dart';
import 'package:flutter_tp3/screens/screens.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.initShared();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<ThemeProvider>(
        create: (_) => ThemeProvider(isDarkMode: Preferences.darkmode),
      ),
      
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final tema = Provider.of<ThemeProvider>(context, listen: true);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'albums',
        theme: tema.temaActual,
        routes: {
          'home': (context) => const HomeScreen(),
          'album_item': (context) => const AlbumSingleScreen(),
          'albums': (context) => const AlbumsScreen(),
        }
        );
  }
}
