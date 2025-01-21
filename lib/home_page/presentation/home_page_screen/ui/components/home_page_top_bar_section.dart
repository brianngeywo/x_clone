import 'package:flutter/material.dart';
import 'package:x_clone/generated/assets.dart';
import 'package:x_clone/theme.dart';

class HomePageTopBarSection extends StatelessWidget {
  const HomePageTopBarSection({super.key});

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(Assets.imagesMyProfilePicture),
            ),
          ),
          const SizedBox(width: 25),
          Text(
            "Home",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: CustomTheme.twitterWhite,
            ),
          )
        ],
      );
}
