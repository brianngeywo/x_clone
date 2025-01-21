import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:x_clone/generated/assets.dart';
import 'package:x_clone/posts_list/data/model/twitter_post.dart';
import 'package:x_clone/theme.dart';

abstract class TwitterPostItemWidgetAbstract extends StatelessWidget {
  final TwitterPost post;

  const TwitterPostItemWidgetAbstract({super.key, required this.post});

  profileImageSection();

  profileInforSection();

  postTextSection();

  postActionsSection();

  @override
  Widget build(BuildContext context) => SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              profileImageSection(),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  profileInforSection(),
                  const SizedBox(height: 5),
                  Container(
                    width: MediaQuery.sizeOf(context).width - 90,
                    margin: const EdgeInsets.only(right: 20),
                    child: postTextSection(),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width - 90,
                    child: postActionsSection(),
                  )
                ],
              )
            ],
          ),
        ),
      );
}

class TwitterPostItemWidget extends TwitterPostItemWidgetAbstract {
  TwitterPostItemWidget({super.key, required super.post});

  @override
  postActionsSection() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // comment icon
          Row(
            children: [
              SvgPicture.asset(Assets.svgCommentIcon),
              const SizedBox(width: 5),
              Text(
                post.commentsCount.toString(),
                style: TextStyle(
                  color: CustomTheme.twitterGrey,
                ),
              ),
            ],
          ),
          // retweet icon
          Row(
            children: [
              SvgPicture.asset(Assets.svgRetweetIcon),
              const SizedBox(width: 5),
              Text(
                post.retweetsCount.toString(),
                style: TextStyle(
                  color: CustomTheme.twitterGrey,
                ),
              ),
            ],
          ),
          // like action
          Row(
            children: [
              SvgPicture.asset(Assets.svgLikeIcon),
              const SizedBox(width: 5),
              Text(
                post.likesCount.toString(),
                style: TextStyle(
                  color: CustomTheme.twitterGrey,
                ),
              ),
            ],
          ),
          // stats icon
          Row(
            children: [
              SvgPicture.asset(Assets.svgStatsIcon),
              const SizedBox(width: 5),
              Text(
                post.statsCount.toString(),
                style: TextStyle(
                  color: CustomTheme.twitterGrey,
                ),
              ),
            ],
          ),
          // share icon
          SvgPicture.asset(Assets.svgShareIcon),
        ],
      );

  @override
  postTextSection() => Text(
        post.postText,
        overflow: TextOverflow.ellipsis,
        maxLines: 10,
        softWrap: true,
        style: TextStyle(
          color: CustomTheme.twitterWhite,
        ),
      );

  @override
  profileImageSection() => CircleAvatar(
        radius: 20,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(Assets.imagesMyProfilePicture),
        ),
      );

  @override
  profileInforSection() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            post.username,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: CustomTheme.twitterWhite,
            ),
          ),
          Text(
            post.userHandle,
            style: TextStyle(
              color: CustomTheme.twitterGrey,
            ),
          ),
        ],
      );
}
