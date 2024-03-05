import 'package:b_coin/presentation/home/home_screen.dart';
import 'package:b_coin/presentation/login/login_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String openingScreen = '/opening_screen';

  static const String communityPage = '/community_page';

  static const String communityContainerScreen = '/community_container_screen';

  static const String chatOneScreen = '/chat_one_screen';

  static const String walkthroughScreen = '/walkthrough_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String mayiknowScreen = '/mayiknow_screen';

  static const String giveupScreen = '/giveup_screen';

  static const String choiceScreen = '/choice_screen';

  static const String congratsScreen = '/congrats_screen';

  static const String chatScreen = '/chat_screen';

  static const String homePage = '/home_page';

  static const String homeTabContainerScreen = '/home_tab_container_screen';

  static const String homeSavingsEditScreen = '/home_savings_edit_screen';

  static const String homeSavingsScreen = '/home_savings_screen';

  static const String homeHealthScreen = '/home_health_screen';

  static const String profileScreen = '/profile_screen';

  static const String addStoryTwoScreen = '/add_story_two_screen';

  static const String addStoryPage = '/add_story_page';

  static const String addStoryOneScreen = '/add_story_one_screen';

  static const String createPostScreen = '/create_post_screen';

  static const String reminderScreen = '/reminder_screen';

  static const String homeSavingsEditOneScreen =
      '/home_savings_edit_one_screen';

  static const String homeSavingsCalScreen = '/home_savings_cal_screen';

  static const String homeSavingsEditTwoScreen =
      '/home_savings_edit_two_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static const String editProfileScreen = '/edit_profile_screen';

  static Map<String, WidgetBuilder> get routes => {
        loginScreen: LoginScreen.builder,
        initialRoute: LoginScreen.builder,
        homePage: HomeScreen.builder
      };
}
