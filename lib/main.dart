import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:myoffice/pages/splash_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");

  late final supabase_url = dotenv.env['SUPABASE_URL']!;
  late final supabase_anon_key = dotenv.env['YOUR_SUPABASE_PUBLISHABLE_KEY']!;

  await Supabase.initialize(
    url: supabase_url,
    anonKey: supabase_anon_key,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // ROOT sudo rm -rf */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Office',
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}