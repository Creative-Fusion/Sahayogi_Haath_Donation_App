import 'package:flutter/cupertino.dart';
import 'package:sahayogihaath/models/organizationmodel.dart';
import './screens/edit_user_details.dart';
import './screens/login/login_main.dart';
import './screens/signup/signup_main.dart';
import './screens/signup/signup_org_main.dart';
import './screens/splash.dart';
import './screens/welcome/welcome.dart';
import 'screens/dashboard/dashboard.dart';
import './screens/organization/exploreorg.dart';
import './screens/organization/org_info.dart';
import './screens/activities_screen/activity_info.dart';
import './screens/activities_screen/acitivity_list.dart';
import './screens/activities_screen/edit_activity.dart';
import './screens/donate_screen/donate_success.dart';
import './screens/donate_screen/donate_main.dart';
import './screens/donate_screen/donation_list.dart';
import './screens/donate_screen/donation_info.dart';
import './screens/organization/tabs/edit_organization.dart';

class Routes {
  Routes._();

  static const String splash = '/splash';
  static const String welcome = '/welcome';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String signupOrganization = '/signupOrganization';

  static const String dashboard = '/dashboard';
  static const String editData = '/editData';

  static const String donate = "/donate_screen";
  static const String donate_success = "/donate_success";
  static const String donation_list = "/donation_list";
  static const String donation_info = "/donation_indo";

  static const String explore_org = "/explore_org";
  static const String org_info = "/org_info";
  static const String activities_list = "/activities_list";
  static const String activity_info = "/activity_info";
  static const String edit_activity = "/edit_activity";
  static const String edit_organization = "/edit_organization";

  static final routes = <String, WidgetBuilder>{
    splash: (context) => SplashScreen(),
    welcome: (context) => Welcome(),
    login: (context) => LoginMain(),
    signup: (context) => SignUpMain(),
    signupOrganization: (context) => SignUpOrganizationMain(),
    dashboard: (context) => Dashboard(),
    explore_org: (context) => ExploreOrganization(),
    org_info: (context) => OrganizationInfo(),
    editData: (context) => EditData(),
    donate: (context) => DonateScreen(),
    donate_success: (context) => DonateSuccess(),
    donation_list: (context) => DonationList(),
    donation_info: (context) => DonationInfo(),
    activities_list: (context) => ActivitiesList(),
    activity_info: (context) => ActivityInfo(),
    edit_activity: (context) => EditActivity(),
    edit_organization: (context) => EditOrganization(),
  };
}
