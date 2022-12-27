import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:steadycalendar/repositories/cal_repo.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:provider/provider.dart';
import './app.dart';
import 'providers/session_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: '.env');

  await Supabase.initialize(
      url: 'https://${dotenv.env['SUPABASE_PROJECT_ID']!}.supabase.co',
      anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
      debug: false);

  // runApp(const App());

  runApp(ChangeNotifierProvider(
      create: (context) => SessionProvider(CalendarRepository),
      child: const App()));
}
