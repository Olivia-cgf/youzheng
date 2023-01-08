/*
 * @Author: Oliva-cgf 1756303507@qq.com
 * @Date: 2023-01-08 16:00:57
 * @LastEditors: Oliva-cgf 1756303507@qq.com
 * @LastEditTime: 2023-01-08 16:06:53
 * @FilePath: /youzheng/lib/component/Swiper.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {
  const SwiperPage({super.key});

  @override
  State<SwiperPage> createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  // 轮播图片
  List<Map> imageList = [
    {"url": "http://www.itying.com/images/flutter/1.png"},
    {"url": "http://www.itying.com/images/flutter/2.png"},
    {"url": "http://www.itying.com/images/flutter/3.png"},
    {"url": "http://www.itying.com/images/flutter/4.png"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Swiper")),
        body: Column(children: <Widget>[
          SizedBox(
            width: double.infinity,
            child: AspectRatio(
              // 配置宽高比
              aspectRatio: 16 / 9,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  // 配置图片地址
                  return Image.network(
                    imageList[index]["url"],
                    fit: BoxFit.fill,
                  );
                },
                // 配置图片数量
                itemCount: imageList.length,
                // 底部分页器
                pagination: const SwiperPagination(),
                // 左右箭头
                control: const SwiperControl(),
                // 无限循环
                loop: true,
                // 自动轮播
                // autoplay: true,
              ),
            ),
          )
        ]));
  }
}
