import 'package:flutter/material.dart';
import 'package:tiktok_flutter/domain/entities/video_post.dart';
import 'package:tiktok_flutter/presentation/widgets/shared/video_buttons.dart';
import 'package:tiktok_flutter/presentation/widgets/video/fullscreen_player.dart';
import 'package:tiktok_flutter/shared/data/local_video_posts.dart';

class VideoScrollableView extends StatelessWidget {

  final List<VideoPost> videos;

  const VideoScrollableView({
    super.key,
    required this.videos,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPosts= videos[index];
        return Stack(
          children: [

            SizedBox.expand(
              child: FullscreenPlayer(
                caption: videoPosts.caption,
                videoUrl: videoPosts.videoUrl,
              ),
            ),


            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: videoPosts)
            )
          ],
        );
      },
    );
  }
}