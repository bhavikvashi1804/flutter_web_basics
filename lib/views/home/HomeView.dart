import 'package:flutter/material.dart';

import 'package:responsive_builder/responsive_builder.dart';

import '../../widgets/navigation_bar/navigation_bar.dart';
import '../../widgets/centered_view/centered_view.dart';
import './home_content_desktop.dart';
import './home_content_mobile.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: [
            NavigationBar(),
            Expanded(
              child: ScreenTypeLayout(
                mobile: HomeContentMobile(),
                desktop: HomeContentDesktop(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
