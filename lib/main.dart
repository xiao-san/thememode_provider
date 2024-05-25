import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_changer/provider/theme_provder.dart';
import 'package:theme_changer/screen/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => ThemeProvider(),
          ),
        ],
        child: Builder(builder: (BuildContext context) {
          final themeProvider = Provider.of<ThemeProvider>(context);

          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            themeMode: themeProvider.themeMode,

            //light theme properties
            theme: ThemeData(
                brightness: Brightness.light, //default light
                appBarTheme: const AppBarTheme(color: Colors.red),
                iconTheme: const IconThemeData(color: Colors.red),
                scaffoldBackgroundColor: Colors.deepOrange.shade100,
                primaryColor: Colors.green,
                colorScheme:
                    const ColorScheme.light(primaryContainer: Colors.green)),

            //dark theme properties
            darkTheme: ThemeData(
                brightness: Brightness.dark,
                appBarTheme: const AppBarTheme(color: Colors.purple),
                iconTheme: const IconThemeData(color: Colors.purple),
                scaffoldBackgroundColor: Colors.grey.shade800,
                primaryColor: Colors.pink,
                colorScheme:
                    const ColorScheme.dark(primaryContainer: Colors.pink)),

            home: const HomePage(),
          );
        }));
  }
}
