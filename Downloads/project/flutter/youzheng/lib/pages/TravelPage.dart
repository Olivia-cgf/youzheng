/*
 * @Author: Oliva-cgf 1756303507@qq.com
 * @Date: 2023-01-08 21:06:36
 * @LastEditors: Oliva-cgf 1756303507@qq.com
 * @LastEditTime: 2023-01-09 21:33:16
 * @FilePath: /youzheng/lib/pages/Travel.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:youzheng/component/CardChange.dart';
import 'package:youzheng/component/FlexWrap.dart';
import 'package:youzheng/component/TabWrap.dart';
import 'package:youzheng/component/TitleComponent.dart';

import 'package:youzheng/component/CupertinoSegmentedControlDemo .dart';

class TravelPage extends StatelessWidget {
  const TravelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(shrinkWrap: true, children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: const [
            TitleComponent(),
            SizedBox(
              height: 20,
            ),
            // TabWrap(),
            SizedBox(
              height: 20,
            ),
            FlexWrap(),
            SizedBox(
              height: 20,
            ),
            FlexWrap(),
            SizedBox(
              height: 20,
            ),
            FlexWrap(),
            CardChangeView(),
            CupertinoSegmentedControlDemo(),
          ],
        ),
      )
    ]);
  }
}
