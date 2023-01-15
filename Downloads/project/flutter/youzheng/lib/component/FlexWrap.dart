/*
 * @Author: Oliva-cgf 1756303507@qq.com
 * @Date: 2023-01-08 20:55:51
 * @LastEditors: Oliva-cgf 1756303507@qq.com
 * @LastEditTime: 2023-01-08 20:56:42
 * @FilePath: /youzheng/lib/component/cart.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';

class FlexWrap extends StatelessWidget {
  const FlexWrap({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Flex(
                    direction: Axis.horizontal,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Row(children: [
                          IconButton(
                              onPressed: () {},
                              color: Colors.red,
                              icon: const Icon(Icons.play_circle_fill)),
                          Column(
                            children: const [
                              Text(
                                'From',
                              ),
                              Text(
                                'Beijing',
                                style: TextStyle(fontSize: 24),
                              )
                            ],
                          )
                        ]),
                      ),
                    ],
                  )),
              const VerticalDivider(
                width: 1,
                thickness: 1,
                color: Colors.black12,
              ),
              Expanded(
                  flex: 1,
                  child: Flex(
                    direction: Axis.horizontal,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(children: const [
                          Text(
                            'From',
                          ),
                          Text(
                            'Beijing',
                            style: TextStyle(fontSize: 24),
                          )
                        ]),
                      )
                    ],
                  )),
            ],
          ),
        ));
  }
}
