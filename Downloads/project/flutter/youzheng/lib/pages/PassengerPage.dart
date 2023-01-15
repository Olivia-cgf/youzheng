import 'package:flutter/material.dart';
import 'package:youzheng/component/BankCard.dart';
import 'package:youzheng/component/CupertinoSegmentedControlDemo%20.dart';
import 'package:youzheng/component/FlexWrap.dart';
import 'package:youzheng/component/TitleComponent.dart';

class PassengerPage extends StatelessWidget {
  const PassengerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TitleComponent(),
        SizedBox(
          height: 20,
        ),
        CupertinoSegmentedControlDemo(),
        SizedBox(
          height: 20,
        ),
        FlexWrap(),
        // BankCard()
      ],
    );
  }
}
