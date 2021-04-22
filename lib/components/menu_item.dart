import 'package:dev_flutter/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    required this.name,
    required this.svgPath,
    required this.routeName,
    Key? key,
  }) : super(key: key);

  final String name;
  final String svgPath;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ListTile(
          leading: SvgPicture.asset(svgPath),
          title: Text(name,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: CustomColors.primaryText)),
          onTap: () {
            Navigator.pushNamed(context, routeName);
          }),
    );
  }
}
