import 'package:flutter/material.dart';
import 'screens/cal_pager/cal_pager.dart';
import 'screens/intro/intro.dart';
import 'screens/login_options/login_options.dart';
import 'screens/splash/splash.dart';

class App extends StatelessWidget {
  const App({super.key});
  // const App({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Steady Calendar',
        initialRoute: Intro.routeName, // named route, easy to refer // TODO: Splash.routeName
        routes: {
          Intro.routeName: (context) => const Intro(),
          Splash.routeName: (context) =>  const Splash(),
          LoginOptions.routeName: (context) => const LoginOptions(),
          CalPager.routeName: (context) => const CalPager(),
        });
  }
}
