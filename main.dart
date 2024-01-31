import 'package:flutter/material.dart';
import 'package:mapfeature_project/NavigationBar.dart';
import 'package:mapfeature_project/moodTracer/sentiment.dart';
import 'package:mapfeature_project/screens/ChatScreen.dart';
import 'package:mapfeature_project/screens/LogInScreen.dart';
import 'package:mapfeature_project/screens/RecommendationScreen.dart';
import 'package:mapfeature_project/screens/SignUpScreen.dart';
import 'package:mapfeature_project/screens/TestScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<SentimentRecording> moodRecordings = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'login': (context) => LogInScreen(),
        'signup': (context) => SignUpScreen(),
        'chat': (context) => ChatScreen(),
        'test': (context) => TestScreen(),
        'recommendation': (context) => RecommendationScreen(),
        'navigator': (context) => NavigationTabs(
              moodRecordings: moodRecordings,
              onMoodSelected: (moodRecording) {
                setState(() {
                  moodRecordings.add(moodRecording);
                });
              },
            ),
      },
      initialRoute: 'login',
    );
  }
}
//  NavigationTabs(
      //   moodRecordings: moodRecordings,
      //   onMoodSelected: (moodRecording) {
      //     setState(() {
      //       moodRecordings.add(moodRecording);
      //     });
      //   },
      // ),
