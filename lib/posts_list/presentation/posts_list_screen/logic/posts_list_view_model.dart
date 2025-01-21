import 'package:flutter/material.dart';
import 'package:x_clone/posts_list/data/data_source/local/posts_list_local_data_source.dart';
import 'package:x_clone/posts_list/data/model/twitter_post.dart';

class PostsListViewModel {
  // singleton pattern
  static PostsListViewModel? _instance;

  static PostsListViewModel get instance {
    _instance ??= PostsListViewModel();
    return _instance!;
  }

  PostsListLocalDataSource get localDataSource =>
      PostsListLocalDataSourceImp.instance;

  ValueNotifier<List<TwitterPost>> _posts = ValueNotifier([]);

  //getter
  List<TwitterPost> get posts => localDataSource.samplePosts;

  // setter
  set posts(List<TwitterPost> value) =>
      _posts.value = localDataSource.samplePosts;
}
