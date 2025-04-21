import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'auth.dart';
import 'home.dart';
import 'tasks.dart';
import 'pdf_reader.dart';
import 'package:timezone/data/latest.dart' as tz;


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initialisation de Firebase
  tz.initializeTimeZones(); 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assistant Virtuel',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/tasks': (context) => TasksPage(),
        '/pdf': (context) => PDFPage(pdfPath: 'assets/pdf/mon_livre.pdf'),
      },
    );
  }
}
