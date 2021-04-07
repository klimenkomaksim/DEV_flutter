import 'package:dev_flutter/theme/colors.dart';
import 'package:flutter/material.dart';

class TagTitle extends StatelessWidget {
  const TagTitle({
    @required this.tagName,
    Key key,
  }) : super(key: key);

  final String tagName;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '#',
        style: Theme.of(context).textTheme.headline2.copyWith(
          color: CustomColors.tagLabel,
        ),
        children: [
          TextSpan(
            text: tagName,
            style: Theme.of(context).textTheme.headline2.copyWith(
              color: CustomColors.primaryText,
            ),
          )
        ]
      )
    );
  }
}