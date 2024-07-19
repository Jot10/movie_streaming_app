import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming/firebase_options.dart';
import 'package:movie_streaming/routes.dart';
//import 'package:movie_streaming/pages/home/signin.dart';
// import 'package:movie_streaming/splash.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(primarySwatch: Colors.blue,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow)),
      darkTheme: ThemeData.dark(),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
    );
  }
}


