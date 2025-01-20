import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:x_clone/generated/assets.dart';
import 'package:x_clone/theme.dart';

class MainPageViewModel {
  // create a singleton pattern
  static MainPageViewModel? _instance;

  // get instance
  static MainPageViewModel get instance {
    _instance ??= MainPageViewModel();
    return _instance!;
  }

  // bottom navigation bar Index
  ValueNotifier<int> _currentBottomNavigationIndex = ValueNotifier<int>(0);

  ValueNotifier<int> get currentBottomNavigationIndex =>
      _currentBottomNavigationIndex;

  void setCurrentBottomNavigationIndex(int index) =>
      _currentBottomNavigationIndex.value = index;

  // list of bottom navigation items
  final List<BottomNavigationBarItem> bottomNavigationItems = [
    BottomNavigationBarItem(
      backgroundColor: CustomTheme.backgroundColor,
      icon: SvgPicture.asset(Assets.svgHomeIcon),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      backgroundColor: CustomTheme.backgroundColor,
      icon: SvgPicture.asset(Assets.svgSearchIcon),
      label: 'Search',
    ),
    BottomNavigationBarItem(
      backgroundColor: CustomTheme.backgroundColor,
      icon: SvgPicture.asset(Assets.svgXAi),
      label: 'ai',
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(Assets.svgNotificationIcon),
      label: 'Notification',
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(Assets.svgInboxIcon),
      label: 'Inbox',
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(Assets.svgCommunitiesIcon),
      label: 'Communities',
    ),
  ];

  List<Widget> navigationPages = const [
    HomePage(),
    SearchPage(),
    CreatePostPage(),
    NotificationPage(),
    InboxPage(),
    CommunitiesPage(),
  ];

  PageController pageController = PageController();
}

class CommunitiesPage extends StatelessWidget {
  const CommunitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Communities Page'),
    );
  }
}

class InboxPage extends StatelessWidget {
  const InboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Inbox Page'),
    );
  }
}

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Notification Page'),
    );
  }
}

class CreatePostPage extends StatelessWidget {
  const CreatePostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Create Post Page'),
    );
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Search Page'),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Home Page'),
    );
  }
}
