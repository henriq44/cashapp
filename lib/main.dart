import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:managment/initial_home.dart';
import 'package:managment/service/auth_service.dart';
import 'package:managment/widgets/auth_check.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => AuthService()),
    ],
    child: MyApp(),
  )
);
}


