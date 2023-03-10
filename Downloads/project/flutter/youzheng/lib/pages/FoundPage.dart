/*
 * @Author: Oliva-cgf 1756303507@qq.com
 * @Date: 2023-01-07 22:21:01
 * @LastEditors: Oliva-cgf 1756303507@qq.com
 * @LastEditTime: 2023-01-08 20:59:03
 * @FilePath: /youzheng/lib/pages/FoundPage.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:youzheng/component/FlexWrap.dart';

class FoundPage extends StatelessWidget {
  const FoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://img1.baidu.com/it/u=1845556535,2973910963&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500'),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 20),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "01/17",
                    style: TextStyle(
                      color: Colors.white,
                      inherit: false,
                    ),
                  ),
                ),
                const SizedBox(height: 150),
                Row(
                  children: const [
                    Icon(Icons.lock_clock, color: Colors.white),
                    Text(
                      "30 DAYS",
                      style: TextStyle(
                        color: Colors.white,
                        inherit: false, //2.不继承默认样式
                      ),
                    )
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.lock_clock, color: Colors.white),
                    Text(
                      "30 DAYS",
                      style: TextStyle(
                        color: Colors.white,
                        inherit: false, //2.不继承默认样式
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Stack(children: const <Widget>[
                  SizedBox(height: 20),
                  // 注意顺序
                  ContentCard(),
                  LocationIcon(),
                ]),
              ],
            )),
      ],
    );
  }
}

// 主体
class ContentCard extends StatelessWidget {
  const ContentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: const RoundedRectangleBorder(
        //形状
        //修改圆角
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child: Column(children: [
        const SizedBox(height: 20),
        const Text("Mad",
            style: TextStyle(
              fontSize: 28,
              inherit: false,
            )), //2.不继承默认样式
        const Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            "我们在前面的章节示例中多次用到过Container组件，本节我们就详细介绍一下Container组件。Container是一个组合类容器，它本身不对应具体的RenderObject，它是DecoratedBox、ConstrainedBox、Transform、Padding、Align等组件组合的一个多功能容器，所以我们只需通过一个Container组件可以实现同时需要装饰、变换、限制的场景。下面是Container的定",
            style: TextStyle(
              color: Colors.black54,
              inherit: false,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Flex(
            direction: Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              IconAndUser(),
              IconAndUser(),
              IconAndUser(),
              IconAndUser(),
            ],
          ),
        ),

        Flex(
          direction: Axis.horizontal,
          children: const [
            UserImage(),
            UserImage(),
            UserImage(),
            UserImage(),
          ],
        ),
        const CardFlex()
      ]),
    );
  }
}

// 图片组件
class UserImage extends StatelessWidget {
  const UserImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Image.network(
          "https://img1.baidu.com/it/u=1845556535,2973910963&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500",
          fit: BoxFit.cover),
    );
  }
}

//图标文字
class IconAndUser extends StatelessWidget {
  const IconAndUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Row(
          children: const [
            Icon(Icons.lock_clock),
            Text(
              "30 DAYS",
              style: TextStyle(
                inherit: false, //2.不继承默认样式
              ),
            )
          ],
        ));
  }
}

// 导航icon
// ignore: camel_case_types
class LocationIcon extends StatelessWidget {
  const LocationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned(
        top: 0,
        right: 40,
        child: Icon(
          Icons.local_airport_sharp,
          color: Colors.blue,
        )
        /*   child: IconButton(
        icon: const Icon(
          Icons.local_airport_sharp,
          color: Colors.blue,
        ),
        onPressed: () {},
      ), */
        );
  }
}

// 下半分Card
class CardFlex extends StatelessWidget {
  const CardFlex({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: const Color.fromARGB(196, 251, 245, 245),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(children: [
              const FlexWrap(),
              const SizedBox(
                height: 10,
              ),
              Flex(
                direction: Axis.horizontal,
                children: [
                  Expanded(
                      child: ElevatedButton(
                    child: const Text("normal"),
                    onPressed: () {},
                  ))
                ],
              )
            ])));
  }
}
