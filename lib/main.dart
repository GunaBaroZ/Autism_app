
//import 'package:autism_application/admin.dart';
import 'package:autism_application/forgot_password.dart';
import 'package:autism_application/home.dart';
import 'package:autism_application/login.dart';
import 'package:autism_application/signup.dart';
import 'package:autism_application/stats.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:autism_application/symptoms.dart';
import 'package:autism_application/questionnaire.dart';
import 'package:autism_application/consent.dart';
//import 'package:autism_application/add_psychiatrist.dart';
//import 'package:autism_application/delete_psychiatrist.dart';
import 'package:autism_application/psychiatrist_list.dart';
// import 'psychiatristList.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(


          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: LogIn() //TO-DO change to login before evaluation
    );
  }
}
