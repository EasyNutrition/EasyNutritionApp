
import 'package:easy_nutrition/home.dart';
import 'package:easy_nutrition/login.dart';
import 'package:easy_nutrition/patient_register.dart';
import 'package:easy_nutrition/register.dart';
import 'package:easy_nutrition/usertype.dart';
import 'package:flutter/material.dart';

import 'create_account.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue,),
      home: Home(),
    );
  }
}
