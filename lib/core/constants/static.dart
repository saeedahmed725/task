import 'package:task/core/constants/app_image_assets.dart';

class Static {
  Static._();

  static List categoryTitles = [
    'Constructions',
    'Insurances',
    'Legal',
    'Buy & Sell',
    'Accounting Services',
  ];
  static List categoryLeadingImage = [
    AppImageAssets.constructions,
    AppImageAssets.insurances,
    AppImageAssets.legal,
    AppImageAssets.services,
    AppImageAssets.accountingServices,
  ];
  static String servicesCardSubTitle =
      'Utilizing a variety of properties\noversight and construction.';
  static List<String> servicesScrollableCardTitles = [
    'Management platform real\nestate asset ',
    'Multi-Services for Your\nReal Estate Needs',
    'Leasing, Maintenance,\nand Managing Your\nProperties with Ease',
  ];
  static List<String> servicesScrollableCardTitlesButton = [
    'Request',
    'Order',
    'My Assets',
  ];
  static List<String> servicesScrollableCardImage = [
    AppImageAssets.maleArchitect,
    AppImageAssets.manPresentation,
    AppImageAssets.engineersTeam,
  ];
  static List<String> navBarImage = [
    AppImageAssets.homeNavBar,
    AppImageAssets.dashboardNavBar,
    AppImageAssets.supportNavBar,
    AppImageAssets.personNavBar,
  ];
  static List<String> appNavBarTitles = [
    'Home',
    'Assets',
    'Support',
    'Profile',
  ];
  static List<String> tabBarTitles = [
    'Categories',
    'Services',
    'Orders (0)',
  ];

}
