import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../cal_pager/cal_pager.dart';
import '../intro/intro.dart';

class Splash extends StatefulWidget {
  static const routeName = '/';

  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

// as per Module 02. Finalizing splash.dart with Supabase we need to extend SupabaseAuthState
// but with new version of SupaBase it is no lomnger needed. It will handled
// at Initialization

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    // recoverSupabaseSession();
  }

  @override
  Widget build(BuildContext context) {
    final authSubscription =
        Supabase.instance.client.auth.onAuthStateChange.listen((data) {
      final AuthChangeEvent event = data.event;
      switch (event) {
        case AuthChangeEvent.signedIn:
          Navigator.of(context).pushNamedAndRemoveUntil(
              CalPager.routeName, ModalRoute.withName(Splash.routeName));
          break;
        case AuthChangeEvent.signedOut:
          Navigator.of(context).pushNamedAndRemoveUntil(
              Intro.routeName, ModalRoute.withName(Splash.routeName));
          break;
        default:
          Navigator.of(context).pushNamedAndRemoveUntil(
              Intro.routeName, ModalRoute.withName(Splash.routeName));
          break;
      }
    });

    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }

  // @override
  // void onErrorAuthenticating(String message) {
  //   print('error authenticating: ' + message);
  // }

}
