import 'package:dev_flutter/theme/border_radius.dart';
import 'package:flutter/material.dart';

class VideoPreview extends StatelessWidget {
  const VideoPreview({
    required this.imageUrl,
    required this.duration,
    Key? key,
  }) : super(key: key);

  final String imageUrl;
  final String duration;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: AlignmentDirectional.bottomEnd, children: [
      Image(image: NetworkImage(imageUrl)),
      Container(
          padding: const EdgeInsets.fromLTRB(5, 2, 5, 3),
          margin: const EdgeInsets.only(bottom: 10, right: 6),
          decoration: BoxDecoration(
              borderRadius: CustomBorderRadius.radius,
              color: Colors.black.withOpacity(0.8)),
          child: Text(duration,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: Colors.white)))
    ]);
  }
}
