import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lesson6/view/startdispsctch.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const FirebaseTemplateApp());
}
class FirebaseTemplateApp extends StatelessWidget{
  const FirebaseTemplateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      initialRoute: Startdispsctch.routeName,
      routes: {
        Startdispsctch.routeName:(context) => const Startdispsctch(),
      },
    );
  }

}