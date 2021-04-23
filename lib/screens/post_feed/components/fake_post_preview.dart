// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:dev_flutter/consts/border_radius.dart';
import 'package:dev_flutter/consts/borders.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class FakePostPreview extends StatelessWidget {
  const FakePostPreview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 8),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.white, border: CustomBorder.horizontalBorder),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          const _FakePostPreviewHeader(),
          const SizedBox(height: 12),
          const _FakePostTitle(),
          const SizedBox(height: 4),
          const _FakeTagList(),
          const SizedBox(height: 8),
          const _FakePostFooter()
        ]));
  }
}

class _FakePostPreviewHeader extends StatelessWidget {
  const _FakePostPreviewHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const _FakeCircleAvatar(),
        const SizedBox(width: 8),
        const _FakePostAuthor()
      ],
    );
  }
}

class _FakeCircleAvatar extends StatelessWidget {
  const _FakeCircleAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final decoration =
        BoxDecoration(color: Colors.grey[300], shape: BoxShape.circle);

    return _getFakeElement(32, 32, decoration: decoration);
  }
}

class _FakePostAuthor extends StatelessWidget {
  const _FakePostAuthor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _getFakeElement(16, 180),
          const SizedBox(height: 2),
          _getFakeElement(14, 40),
        ]);
  }
}

class _FakePostTitle extends StatelessWidget {
  const _FakePostTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _getFakeElement(25, 360);
  }
}

class _FakeTagList extends StatelessWidget {
  const _FakeTagList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
        children: [const _FakeTag(), const _FakeTag(), const _FakeTag()]);
  }
}

class _FakeTag extends StatelessWidget {
  const _FakeTag({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _getFakeElement(15, 80,
        margin: const EdgeInsets.only(top: 4, right: 8, bottom: 4));
  }
}

class _FakePostFooter extends StatelessWidget {
  const _FakePostFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const _FakeReaction(),
      const _FakeReaction(),
      const Spacer(),
      const _FakeButton()
    ]);
  }
}

class _FakeReaction extends StatelessWidget {
  const _FakeReaction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _getFakeElement(24, 52,
        margin: const EdgeInsets.fromLTRB(8, 4, 12, 4));
  }
}

class _FakeButton extends StatelessWidget {
  const _FakeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final decoration = BoxDecoration(
      color: Colors.grey[300],
      borderRadius: CustomBorderRadius.radius,
    );

    return _getFakeElement(40, 64, decoration: decoration);
  }
}

Shimmer _getFakeElement(
  double height,
  double width, {
  BoxDecoration? decoration,
  EdgeInsets? margin,
}) {
  final color = decoration == null ? Colors.grey[300] : null;

  return Shimmer.fromColors(
    baseColor: Colors.grey[300]!,
    highlightColor: Colors.grey[100]!,
    child: Container(
      height: height,
      width: width,
      decoration: decoration,
      color: color,
      margin: margin,
    ),
  );
}
