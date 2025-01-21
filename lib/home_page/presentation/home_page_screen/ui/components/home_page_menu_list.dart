import 'package:flutter/material.dart';
import 'package:x_clone/theme.dart';

class HomePageMenuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SizedBox(
        height: 60,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            HomePageMenuListItem(
              title: 'For You',
              isSelected: true,
            ),
            HomePageMenuListItem(
              title: 'Following',
              isSelected: false,
            ),
            HomePageMenuListItem(
              title: 'Techies In Africa',
              isSelected: false,
            ),
            HomePageMenuListItem(
              title: 'Kenyan Tech Scene',
              isSelected: false,
            ),
            HomePageMenuListItem(
              title: 'Dart & Flutter Community',
              isSelected: false,
            ),
          ],
        ),
      );
}

class HomePageMenuListItem extends StatelessWidget {
  final String title;
  final bool isSelected;

  const HomePageMenuListItem(
      {super.key, required this.title, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Text(
        title,
        style: TextStyle(
          color:
              isSelected ? CustomTheme.twitterWhite : CustomTheme.twitterGrey,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }
}
