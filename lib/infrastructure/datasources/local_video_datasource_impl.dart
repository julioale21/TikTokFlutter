import 'package:tok_tik/domain/datasources/video_post_datasource.dart';
import 'package:tok_tik/infrastructure/models/local_video_model.dart';
import 'package:tok_tik/shared/data/data_video_post.dart';
import 'package:tok_tik/video_post.dart';

class LocalVideoDatasource implements VideoPostDatasource {

    @override
  Future<List<VideoPost>> getFavoritesVideosByUser(String userId) {
    throw UnimplementedError();
  }


  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity()).toList();

        return newVideos;
  }

}
