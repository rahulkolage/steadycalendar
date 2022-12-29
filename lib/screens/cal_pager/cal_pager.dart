import 'package:flutter/material.dart';
// import 'package:cached_network_image/cached_network_image.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:provider/provider.dart';
import '../cal_list/cal_list.dart';
import '../call_edit/cal_edit.dart';
import '/providers/session_provider.dart';
import '/screens/cal_pager/cal_view/cal_view.dart';

class CalPager extends StatelessWidget {
  static const String routeName = '/cal_pager';
  static const String calListIconKey = 'cal-list-icon';

  const CalPager({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SessionProvider>(builder: (context, session, _) {
      return Scaffold(
          body: Stack(
        children: [
          PageView(children: session.cals.map((cal) => CalView(cal)).toList()),
          // above aaray will be fileld by data using Calendar View
          // [
          //   'adventures-begin-mug@3x.png',
          //   'apple-and-juice@3x.png',
          //   'apples-on-tree@3x.png'
          // ]
          //         // .map((name) => Image.network(
          //         //     "https://${baseBackgroundImageURL(dotenv.env['SUPABASE_PROJECT_ID']!)}/$name"))
          //         // .toList(),

          //         .map((name) => CachedNetworkImage(
          //               imageUrl:
          //                   "${baseBackgroundImageURL(dotenv.env['SUPABASE_PROJECT_ID']!)}/$name",
          //               fit: BoxFit.cover,
          //               alignment: Alignment.center,
          //               placeholder: (context, url) =>
          //                   const CircularProgressIndicator(),
          //               errorWidget: (context, url, error) =>
          //                   const Icon(Icons.error),
          //             ))
          //         .toList()),

          // // code below has session id displayed on screen
          // will remove it in further UI upgrade
          // (Supabase.instance.client.auth.currentUser != null
          //     ? Center(
          //         child: Column(
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             crossAxisAlignment: CrossAxisAlignment.center,
          //             children: [
          //             Text(Supabase.instance.client.auth.currentUser!.id),
          //             TextButton(
          //                 onPressed: _logOut, child: const Text("Log Out"))
          //           ]))
          //     : Container())
          Positioned(
              left: 20.0,
              bottom: 20.0,
              child: IconButton(
                  key: const Key(calListIconKey),
                  icon: Image.asset('assets/icons/icon-menu@3x.png'),
                  iconSize: 35,
                  onPressed: () =>
                      Navigator.pushNamed(context, CalList.routeName))),
          (session.cals.isEmpty
              ? Center(
                  child: IconButton(
                      icon: Image.asset('assets/icons/icon-plus@3x.png'),
                      iconSize: 35,
                      onPressed: () => Navigator.pushNamed(
                          context, CalEdit.routeName,
                          arguments: CalEditArguments(null))))
              : Container()),
        ],
      ));
    });
  }

  // _logOut() async {
  //   await Supabase.instance.client.auth.signOut();
  //   // NOTE splash.dart will handle navigation when it handles auth updates
  // }
}
