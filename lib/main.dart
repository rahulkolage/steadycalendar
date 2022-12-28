import 'package:flutter/material.dart';
import './app.dart';
import '/screens/splash/splash_state.dart';


void main() async {  
  // WidgetsFlutterBinding.ensureInitialized();

  // await dotenv.load(fileName: '.env');

  // await Supabase.initialize(
  //     url: 'https://${dotenv.env['SUPABASE_PROJECT_ID']!}.supabase.co',
  //     anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
  //     debug: false);

  // // runApp(const App());

  // runApp(ChangeNotifierProvider(
  //     create: (context) => SessionProvider(calendarRepository),
  //     child: const App()));


  // moved above code in app.dart
  runAppWithOptions(envFileName: '.env', splashState: SplashState());       
}
