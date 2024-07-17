// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_project/app.dart';

/// Entry of point of flutter app
void main() async {
  // Todo: add Widget binding
  // Todo: init local storage
  // Todo: await native splash
  // Todo:Initialize firebase
  // Todo: Initialize Authentication
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const App());
}
