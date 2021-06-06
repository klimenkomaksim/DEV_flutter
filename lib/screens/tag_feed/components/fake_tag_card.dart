// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:dev_flutter/consts/border_radius.dart';
import 'package:dev_flutter/consts/borders.dart';
import 'package:dev_flutter/shared_components/fake_element.dart';
import 'package:flutter/material.dart';

class FakeTagCard extends StatelessWidget {
  const FakeTagCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 16, right: 16, top: 16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: CustomBorderRadius.radius,
            border: CustomBorder.allBorder),
        child: ClipRRect(
            borderRadius: CustomBorderRadius.radius,
            child: Column(children: [
              const FakeElement(height: 16),
              const _TagCardBody()
            ])));
  }
}

class _TagCardBody extends StatelessWidget {
  const _TagCardBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const FakeElement(height: 30, width: 140),
              const _FakeButton(),
            ]));
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

    return FakeElement(height: 40, width: 64, decoration: decoration);
  }
}
