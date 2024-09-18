import 'package:flutter/material.dart';
import 'package:frescapp/provider/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider())
      ],
      child: Consumer<ThemeProvider>(
          builder: (context, themeProvider, child) {
            return MaterialApp(
              title: 'Frescapp',
              theme: themeProvider.currentTheme,
              initialRoute: '/',
              builder: (context, child) {
                throw UnimplementedError();
                //return Consumer(builder: builder)
              },
            );
          }
      )
    );
  }
}
