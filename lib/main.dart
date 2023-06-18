import 'package:cms_final/services/data.dart';
import 'package:cms_final/pages/About.dart';
import 'package:cms_final/pages/Assignments.dart';
import 'package:cms_final/pages/BirthPicker.dart';
import 'package:cms_final/pages/CircleAv.dart';
import 'package:cms_final/pages/EditProf.dart';
import 'package:cms_final/pages/Entry.dart';
import 'package:cms_final/pages/ForgetPw.dart';
import 'package:cms_final/pages/Home.dart';
import 'package:cms_final/pages/Navigation.dart';
import 'package:cms_final/pages/NewSignup.dart';
import 'package:cms_final/pages/Profile.dart';

import 'package:cms_final/pages/ResetPw.dart';
import 'package:cms_final/pages/entry1.dart';
import 'package:cms_final/pages/genderPicker.dart';
import 'package:cms_final/pages/myCourses.dart';
import 'package:cms_final/pages/personalInfo.dart';
import 'package:cms_final/pages/register.dart';
import 'package:cms_final/pages/semesters.dart';
import 'package:cms_final/pages/signIn.dart';
import 'package:cms_final/pages/welcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:cms_final/services/auth_service.dart';
import 'package:cms_final/providers/UserTypeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/NewSignup.dart';
import 'pages/signIn.dart' as signin;
import 'pages/register.dart';
import 'package:cms_final/providers/UserTypeProvider.dart';
void main() {
  runApp(
    
    ChangeNotifierProvider<UserTypeProvider>(
      create: (_) => UserTypeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/login': (context) => SignIn(),
        '/home': (context) => Home(),
        '/entry': (context) => Entryy(),
      },

      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: SignIn(),
    );
  }
}