// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:dev_flutter/consts/border_radius.dart';
import 'package:dev_flutter/consts/borders.dart';
import 'package:dev_flutter/shared_components/fake_element.dart';
import 'package:flutter/material.dart';

class FakePodcastPreview extends StatelessWidget {
  const FakePodcastPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white, border: CustomBorder.horizontalBorder),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const _FakePodcastImage(),
          const _FakePodcastPreviewBody()
        ]));
  }
}

class _FakePodcastPreviewBody extends StatelessWidget {
  const _FakePodcastPreviewBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _FakePodcastTitle(),
          const SizedBox(height: 16),
          const FakeElement(width: 150, height: 18)
        ],
      ),
    );
  }
}

class _FakePodcastTitle extends StatelessWidget {
  const _FakePodcastTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const _FakePodcastLabel(),
        const FakeElement(width: 250, height: 22),
      ],
    );
  }
}

class _FakePodcastLabel extends StatelessWidget {
  const _FakePodcastLabel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final decoration = BoxDecoration(
        color: Colors.grey[300], borderRadius: CustomBorderRadius.radius);
    const margin = EdgeInsets.only(right: 5, top: 3);
    return FakeElement(
      width: 80,
      height: 24,
      decoration: decoration,
      margin: margin,
    );
  }
}

class _FakePodcastImage extends StatelessWidget {
  const _FakePodcastImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final decoration =
        BoxDecoration(color: Colors.grey[300], shape: BoxShape.circle);
    const margin = EdgeInsets.only(left: 16, top: 16);

    return FakeElement(
        height: 44, width: 44, decoration: decoration, margin: margin);
  }
}
