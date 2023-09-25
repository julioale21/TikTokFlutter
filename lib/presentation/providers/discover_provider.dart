import 'package:flutter/material.dart';
import 'package:tok_tik/infrastructure/models/local_video_model.dart';
import 'package:tok_tik/shared/data/data_video_post.dart';
import 'package:tok_tik/video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  //TODO: Repository, Datasource

  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> liadNextPage() async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts.map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity()).toList();

    videos.addAll(newVideos);
    initialLoading = false;

    notifyListeners();
  }
}
