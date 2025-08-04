import 'package:flutter/material.dart';
import 'package:tiktok_flutter/domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier { 
  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadVideos() async {
    // todo: load videos

    notifyListeners();
  }

}