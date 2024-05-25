import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_changer/provider/theme_provder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('THEME MODE'),
        // backgroundColor: Colors.blue,
        // foregroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              themeProvider.isChanged
                  ? themeProvider.themeChanger(ThemeMode.light)
                  : themeProvider.themeChanger(ThemeMode.dark);
            },
            icon: Icon(themeProvider.isChanged
                ? Icons.light_mode_outlined
                : Icons.dark_mode_outlined),
          ),
        ],
      ),
      body: Column(
        children: [
          // RadioListTile<ThemeMode>(
          //   title: const Text('Light Mode'),
          //   value: ThemeMode.light,
          //   groupValue: themeProvider.themeMode,
          //   onChanged: themeProvider.themeChanger,
          // ),
          // RadioListTile<ThemeMode>(
          //   title: const Text('Light Mode'),
          //   value: ThemeMode.dark,
          //   groupValue: themeProvider.themeMode,
          //   onChanged: themeProvider.themeChanger,
          // ),
          const Icon(
            Icons.favorite,
            size: 45,
          ),

          Expanded(
            child: GridView.builder(
              itemCount: 12,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              itemBuilder: (context, index) {
                return Container(
                  height: 40,
                  width: 40,
                  margin: const EdgeInsets.all(10),
                  color: Theme.of(context).primaryColor,
                );
              },
            ),
          ),

          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.all(10),
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
        ],
      ),
    );
  }
}
