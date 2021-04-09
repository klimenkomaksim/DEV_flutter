import 'package:dev_flutter/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Reaction extends StatelessWidget {
  const Reaction({
    required this.reactionCount,
    required this.svgPath,
    Key? key,
  }) : super(key: key);

  final int? reactionCount;
  final String svgPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 4, 12, 4),
      child: Row(
        children: [
          SvgPicture.asset(svgPath, width: 24, height: 24),
          const SizedBox(width: 8),
          Text(
            reactionCount.toString(),
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: CustomColors.reactionText, height: 1.3),
          )
        ],
      ),
    );
  }
}
