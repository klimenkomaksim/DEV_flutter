import 'package:dev_flutter/consts/border_radius.dart';
import 'package:dev_flutter/consts/colors.dart';
import 'package:flutter/material.dart';

class PodcastLabel extends StatelessWidget {
  const PodcastLabel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: CustomColors.podactLabel,
        borderRadius: CustomBorderRadius.radius,
      ),
      margin: const EdgeInsets.only(right: 5, top: 3),
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: _PodcastLabelText(),
    );
  }
}

class _PodcastLabelText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('podcast',
        style: Theme.of(context)
            .textTheme
            .bodyText1!
            .copyWith(color: Colors.white, fontWeight: FontWeight.w700));
  }
}
