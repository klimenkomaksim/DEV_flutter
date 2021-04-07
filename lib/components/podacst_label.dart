import 'package:dev_flutter/theme/colors.dart';
import 'package:flutter/material.dart';

class PodcastLabel extends StatelessWidget {
  const PodcastLabel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final labelText = getLabelText(context);
    
    return Container(
      width: 80,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: CustomColors.podactLabel,
        borderRadius: BorderRadius.circular(4),
      ),
      margin: const EdgeInsets.only(
        right: 5,
        top: 3,
      ),
      padding: const EdgeInsets.symmetric(horizontal:  4),
      child: labelText,
    );
  }

  Text getLabelText(BuildContext context) {
    return Text(
      'podcast',
      style: Theme.of(context).textTheme.bodyText1.copyWith(
        color: Colors.white,
        fontWeight: FontWeight.w700,
      )
    );
  }
}