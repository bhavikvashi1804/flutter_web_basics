import 'package:flutter/material.dart';

import '../../widgets/navigation_bar/navigation_bar.dart';
import '../../widgets/centered_view/centered_view.dart';
import '../../widgets/course_details/course_details.dart';

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
              child: Row(
                children: [
                  CourseDetails(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
