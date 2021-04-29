// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:dev_flutter/consts/borders.dart';
import 'package:dev_flutter/shared_components/fake_element.dart';
import 'package:flutter/material.dart';

class FakeVideoPostPreview extends StatelessWidget {
  const FakeVideoPostPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 6, right: 6, top: 8),
        padding: const EdgeInsets.only(bottom: 8),
        decoration:
            BoxDecoration(color: Colors.white, border: CustomBorder.allBorder),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const FakeElement(
            height: 234,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const FakeElement(
                      height: 22,
                      width: 370,
                    ),
                    const SizedBox(height: 2),
                    const FakeElement(
                      height: 22,
                      width: 370,
                    ),
                    const SizedBox(height: 10),
                    const FakeElement(
                      height: 16,
                      width: 100,
                    )
                  ]))
        ]));
  }
}
