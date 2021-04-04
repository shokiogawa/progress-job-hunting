import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:progress_job_hunting_app/di.dart';
import 'package:progress_job_hunting_app/view/page/add_company_page.dart';
import 'package:progress_job_hunting_app/view/screen/login_screen.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:progress_job_hunting_app/view/screen/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FutureBuilder(
          future: context.read(logInPageController).isUserLogin(),
          builder: (context, snapshot) {
            return snapshot.data == false ? LoginScreen() : MainScreen();
          }),
      routes: {
        '/login_page': (BuildContext context) => LoginScreen(),
        '/input_company_page': (BuildContext context) => AddCompanyPage(),
      },
    );
  }
}
