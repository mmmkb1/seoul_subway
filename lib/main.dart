import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seoul_subway/presentation/subway/subway_screen.dart';
import 'package:seoul_subway/presentation/subway/subway_screen_view_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SubwayScreenViewModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SubwayScreen(),
    );
  }
}
