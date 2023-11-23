import 'package:flutter/material.dart';
import 'package:zooom/screens/new_meating_sceen.dart';

import 'screens/home_screen.dart';
import 'screens/video_call_screen.dart';
import 'utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zoom Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/video-call': (context) => const VideoCallScreen(),
        '/newmeet': (context) => NewMeatingScreenPage(),
      },
      home: const HomeScreen(),
    );
  }
}
