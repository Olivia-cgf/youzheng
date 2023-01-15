/*
 * @Author: Oliva-cgf 1756303507@qq.com
 * @Date: 2023-01-08 21:04:36
 * @LastEditors: Oliva-cgf 1756303507@qq.com
 * @LastEditTime: 2023-01-08 21:12:38
 * @FilePath: /youzheng/lib/component/Title.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';

class TitleComponent extends StatelessWidget {
  const TitleComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding: const EdgeInsets.fromLTRB(0, 40, 40, 0),
      padding: const EdgeInsets.all(20),
      child: Flex(
        direction: Axis.horizontal,
        crossAxisAlignment: CrossAxisAlignment.center,
        verticalDirection: VerticalDirection.down,
        children: const <Widget>[
          Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Asia",
                  style: TextStyle(
                    inherit: false, //2.不继承默认样式
                    fontSize: 30,
                  ),
                ),
              )),
          Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.menu),
              )),
        ],
      ),
    );
  }
}
