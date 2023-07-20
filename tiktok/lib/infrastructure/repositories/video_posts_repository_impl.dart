import 'package:toktik/domain/entities/video_post.dart';
import '../../domain/datasources/video_posts_datasource.dart';
import '../../domain/repositories/videos_posts_repository.dart';

class VideoPostRepositoryImpl implements VideoPostsRepository{

  final VideoPostDatasource videosDatasource;

  VideoPostRepositoryImpl({
    required this.videosDatasource
  });

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {

    return videosDatasource.getTrendingVideosByPage(page);
  }

}