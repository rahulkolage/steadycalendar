import 'package:flutter/material.dart';
// import 'package:cached_network_image/cached_network_image.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:provider/provider.dart';
import '/providers/session_provider.dart';
import '/screens/cal_pager/cal_view/cal_view.dart';

class CalPager extends StatelessWidget {
  static const String routeName = '/cal_pager';

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
          (Supabase.instance.client.auth.currentUser != null
              ? Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      Text(Supabase.instance.client.auth.currentUser!.id),
                      TextButton(
                          onPressed: _logOut, child: const Text("Log Out"))
                    ]))
              : Container())
        ],
      ));
    });
  }

  _logOut() async {
    await Supabase.instance.client.auth.signOut();
    // NOTE splash.dart will handle navigation when it handles auth updates
  }
}
