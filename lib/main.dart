import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tasbeeh/models/tasbeeh_state.dart';
import 'package:tasbeeh/pages/tasbeeh_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  runApp(MyApp(prefs: prefs));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.prefs});

  final SharedPreferences prefs;

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => prefs,
      child: ChangeNotifierProvider(
        create: (context) => TasbeehState(prefs: prefs),
        child: MaterialApp(
          title: 'Tasbeeh',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const TasbeehPage(),
        ),
      ),
    );
  }
}
