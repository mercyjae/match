import 'package:flutter/material.dart';
import 'package:match/comments.dart';
import 'package:match/match_details.dart';
import 'package:match/outcome.dart';
import 'package:match/todays_live.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false,
        home: Comments());
  }
}
