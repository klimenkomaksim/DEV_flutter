import 'package:dev_flutter/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    required this.title,
    required this.svgName,
    Key? key,
  }) : super(key: key);

  final String? title;
  final String? svgName;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset('images/$svgName.svg'),
      title: Text(
        title!,
        style: Theme.of(context)
            .textTheme
            .bodyText1!
            .copyWith(color: CustomColors.primaryText),
      ),
    );
  }
}
