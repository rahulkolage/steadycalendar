import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  static const routeName = '/';

  final State<Splash> state;

  const Splash(this.state, {super.key});

  // @override
  // State<Splash> createState() => _SplashState();

  @override
  // ignore: no_logic_in_create_state
  State<Splash> createState() => state; // here state can be real state or mock state
}

// as per Module 02. Finalizing splash.dart with Supabase we need to extend SupabaseAuthState
// but with new version of SupaBase it is no lomnger needed. It will handled
// at Initialization

/**
 * moved code below to splash_state.dart
 * reason: separating this logic for testing purpose as we can 
 * easily use mock splash state for testing instead depend on
 * actual Supabase calls
 */

// class _SplashState extends State<Splash> {
//   _SplashState();

//   @override
//   void initState() {
//     super.initState();
//     // recoverSupabaseSession();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final authSubscription =
//         Supabase.instance.client.auth.onAuthStateChange.listen((data) {
//       final AuthChangeEvent event = data.event;
//       switch (event) {
//         case AuthChangeEvent.signedIn:
//           // For Provider instance below we have to use alias as "Provider" is used by another package "gotrue"
//           provider.Provider.of<SessionProvider>(context, listen: false)
//         .refreshCalendars();
        
//           Navigator.of(context).pushNamedAndRemoveUntil(
//               CalPager.routeName, ModalRoute.withName(Splash.routeName));
//           break;
//         case AuthChangeEvent.signedOut:
//           Navigator.of(context).pushNamedAndRemoveUntil(
//               Intro.routeName, ModalRoute.withName(Splash.routeName));
//           break;
//         default:
//           Navigator.of(context).pushNamedAndRemoveUntil(
//               Intro.routeName, ModalRoute.withName(Splash.routeName));
//           break;
//       }
//     });

//     return const Scaffold(
//       body: Center(child: CircularProgressIndicator()),
//     );
//   }

//   // @override
//   // void onErrorAuthenticating(String message) {
//   //   print('error authenticating: ' + message);
//   // }

// }
