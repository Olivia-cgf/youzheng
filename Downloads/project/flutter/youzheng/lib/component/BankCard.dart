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

class BankCard extends StatefulWidget {
  const BankCard({super.key});

  @override
  State<BankCard> createState() => _BankCardState();
}

class _BankCardState extends State<BankCard> {
  // 轮播图片
  List<Map> imageList = [
    {"url": "images/1.jpg"},
    {"url": "images/2.jpg"},
    {"url": "images/3.jpg"},
    {"url": "images/1.jpg"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: const Text("Swiper")),
        body: Column(children: <Widget>[
      const SizedBox(height: 5),
      SizedBox(
        width: double.infinity,
        child: AspectRatio(
          // 配置宽高比
          aspectRatio: 1 / 1,
          child: Swiper(
            viewportFraction: 0.8,
            scale: 0.8, // 间距
            itemBuilder: (BuildContext context, int index) {
              // 配置图片地址
              return Container(
                  padding: const EdgeInsets.all(10),

                  //超出部分，可裁剪
                  // clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), // 配置圆角
                    /*  boxShadow: const [
                      // 配置阴影
                      BoxShadow(
                          color: Color.fromARGB(255, 103, 103, 103),
                          blurRadius: 1)
                    ], */
                    color: Colors.white, // 背景颜色
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        imageList[index]["url"],
                        fit: BoxFit.cover,
                      )));
            },
            // 配置图片数量
            itemCount: imageList.length,
            // 底部分页器
            // pagination: const SwiperPagination(builder: SwiperPagination.dots),
            // 左右箭头
            // control: const SwiperControl(),
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
