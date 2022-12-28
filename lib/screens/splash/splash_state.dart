import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:provider/provider.dart' as provider;
import '/providers/session_provider.dart';
import '/screens/splash/splash.dart';
import '/screens/cal_pager/cal_pager.dart';
import '/screens/intro/intro.dart';



class SplashState extends State<Splash> {
  SplashState();

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
          login();
          break;
        case AuthChangeEvent.signedOut:
          logout(context);
          break;
        default:
          logout(context);
          break;
      }
    });

    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }

  login() async {
    // For Provider instance below we have to use alias as "Provider" is used by another package "gotrue"
    provider.Provider.of<SessionProvider>(context, listen: false)
        .refreshCalendars();

    Navigator.of(context).pushNamedAndRemoveUntil(
        CalPager.routeName, ModalRoute.withName(Splash.routeName));
  }

  logout(BuildContext context) async {
    Navigator.of(context).pushNamedAndRemoveUntil(
        Intro.routeName, ModalRoute.withName(Splash.routeName));
  }
  // @override
  // void onErrorAuthenticating(String message) {
  //   print('error authenticating: ' + message);
  // }

}
