import 'package:clock_app/screen/first_page.dart';
import 'package:clock_app/screen/watch.dart';
import 'package:flutter/material.dart';

void main ()
{
  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home:first_page(),
    ),
  );
}