import 'package:flutter/material.dart';
import 'package:narutoapp/screens/account_page.dart';
import 'package:narutoapp/screens/login_page.dart';
import 'package:narutoapp/screens/register_page.dart';
import 'package:narutoapp/screens/splash_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  await Supabase.initialize(
    url: 'https://xovcflymnsuflqkqzeyy.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InhvdmNmbHltbnN1Zmxxa3F6ZXl5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTcwMjM3MjgsImV4cCI6MjAzMjU5OTcyOH0._5pWD2iX0yj5BHCdj06SJnecqJumqdt-thczPkD_wDk',
  );
  runApp(const MyApp());
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NarutoApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginPage(),
        '/account': (context) => const AccountPage(),
        '/register': (context) => const RegisterPage(),
      },
    );
  }
}
