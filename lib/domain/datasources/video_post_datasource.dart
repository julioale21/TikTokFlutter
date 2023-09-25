import 'package:tok_tik/video_post.dart';

abstract class VideoPostDatasource {

  Future<List<VideoPost>> getFavoritesVideosByUser(String userId);
  
  Future<List<VideoPost>> getTrendingVideosByPage(int page);
}