import 'package:b_coin/core/utils/navigator_service.dart';
import 'package:b_coin/routes/app_routes.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'B-Coin',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('Logout'),
            onTap: () {
              // Handle the Logout option
              // Add your logout logic here
              NavigatorService.popAndPushNamed(
                AppRoutes.loginScreen,
              );
            },
          ),
        ],
      ),
    );
  }
}
