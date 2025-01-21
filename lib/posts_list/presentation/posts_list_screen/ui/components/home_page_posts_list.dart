import 'package:flutter/material.dart';
import 'package:x_clone/posts_list/presentation/posts_list_screen/logic/posts_list_view_model.dart';
import 'package:x_clone/posts_list/presentation/posts_list_screen/ui/components/twitter_post_item_widget.dart';
import 'package:x_clone/theme.dart';

class HomePagePostsList extends StatelessWidget {
  PostsListViewModel get _postsListViewModel => PostsListViewModel.instance;

  @override
  Widget build(BuildContext context) => ListView(
        children: _postsListViewModel.posts
            .map((post) => Column(
                  children: [
                    TwitterPostItemWidget(post: post),
                    Divider(
                      color: CustomTheme.twitterGrey.withOpacity(0.3),
                      thickness: 0.5,
                    ),
                  ],
                ))
            .toList(),
      );
}
