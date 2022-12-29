import 'package:flutter/material.dart';
import 'sc_nav_bar_image_button.dart';

class SCNavBar extends StatelessWidget {
  final String title;
  final Widget? child;
  final bool showBack;
  final Function? backTap;
  final bool isModal;
  final List<Widget> rightActions;

  const SCNavBar(
      {Key? key, required this.title,
      this.child,
      this.showBack = true,
      this.backTap,
      this.isModal = false,
      this.rightActions = const []}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ios = Theme.of(context).platform == TargetPlatform.iOS;

    return Scaffold(
      appBar: AppBar(
        // brightness: Brightness.light,
        title: Text(title),
        centerTitle: true,
        leading: (showBack
            ? Container(
                padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                child: SCNavBarImageButton(
                  iconFilename: (isModal
                      ? 'assets/icons/icons8-delete-100.png'
                      : 'assets/icons/icons8-back-96.png'),
                  onTap: () => (backTap != null
                      ? backTap!()
                      : Navigator.of(context).pop()),
                ))
            : Container()),
        backgroundColor: Colors.white,
        elevation: (ios ? 0.0 : 4.0),
        actions: rightActions,
      ),
      body: child,
    );
  }
}
