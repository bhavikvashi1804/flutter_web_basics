import 'package:flutter/material.dart';

import 'package:responsive_builder/responsive_builder.dart';
import '../../datamodels/navbar_item_model.dart';
import '../../locator.dart';
import '../../services/navigation_service.dart';
import '../../widgets/navbar_item/navbar_item_desktop.dart';
import '../../widgets/navbar_item/navbar_item_mobile.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  final IconData icon;
  const NavBarItem(this.title, this.navigationPath, {this.icon});

  @override
  Widget build(BuildContext context) {
    var model = NavBarItemModel(
      title: title,
      navigationPath: navigationPath,
      iconData: icon,
    );
    return GestureDetector(
      onTap: () {
        // DON'T EVER USE A SERVICE DIRECTLY IN THE UI TO CHANGE ANY KIND OF STATE
        // SERVICES SHOULD ONLY BE USED FROM A VIEWMODEL
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: ScreenTypeLayout(
        tablet: NavBarItemTabletDesktop(
          model: model,
        ),
        mobile: NavBarItemMobile(
          model: model,
        ),
      ),
    );
  }
}
