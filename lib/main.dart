import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:hellper/pages/account_page.dart';
import 'package:hellper/pages/login_page.dart';
import 'package:hellper/pages/splah_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://kbadxdndictbxhtoscov.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImtiYWR4ZG5kaWN0YnhodG9zY292Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzczNjQyNzgsImV4cCI6MTk5Mjk0MDI3OH0.ReEZkWYwooEuS_v7ReNjVe5QkMNsT2gBKS7Zq388ELI',
  );
  runApp(const Hellper());
}
class Hellper extends StatelessWidget {
  const Hellper({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Supabase Flutter',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.green,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.green,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.green,
          ),
        ),
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (_) => const SplashPage(),
        '/login': (_) => const LoginPage(),
        '/account': (_) => const AccountPage(),
      },
    );
  }
}