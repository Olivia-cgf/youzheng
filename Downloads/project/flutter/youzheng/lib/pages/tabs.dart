/*
 * @Author: Oliva-cgf 1756303507@qq.com
 * @Date: 2023-01-02 00:02:27
 * @LastEditors: Oliva-cgf 1756303507@qq.com
 * @LastEditTime: 2023-01-07 22:00:00
 * @FilePath: /demo/lib/pages/tabs.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';

import "./tabs/home.dart";
import "./tabs/category.dart";
import "./tabs/setting.dart";

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [HomePage(), CategoryPage(), SettingPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("flutter App")),
      drawer: Drawer(
        child: Column(children: [
          Row(
            children: const [
              Expanded(
                flex: 1,
                child: UserAccountsDrawerHeader(
                  accountName: Text("it"),
                  accountEmail: Text("accountEmail"),
                  otherAccountsPictures: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://t13.baidu.com/it/u=545105383,2937046307&fm=224&app=112&size=h200&n=0&f=JPEG&fmt=auto?sec=1672765200&t=7bc89523cd009c4bd1c5ecca2ced25da"),
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://t13.baidu.com/it/u=545105383,2937046307&fm=224&app=112&size=h200&n=0&f=JPEG&fmt=auto?sec=1672765200&t=7bc89523cd009c4bd1c5ecca2ced25da"),
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://t13.baidu.com/it/u=545105383,2937046307&fm=224&app=112&size=h200&n=0&f=JPEG&fmt=auto?sec=1672765200&t=7bc89523cd009c4bd1c5ecca2ced25da"),
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://t13.baidu.com/it/u=545105383,2937046307&fm=224&app=112&size=h200&n=0&f=JPEG&fmt=auto?sec=1672765200&t=7bc89523cd009c4bd1c5ecca2ced25da"),
                    )
                  ],
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://t13.baidu.com/it/u=545105383,2937046307&fm=224&app=112&size=h200&n=0&f=JPEG&fmt=auto?sec=1672765200&t=7bc89523cd009c4bd1c5ecca2ced25da"),
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://t13.baidu.com/it/u=545105383,2937046307&fm=224&app=112&size=h200&n=0&f=JPEG&fmt=auto?sec=1672765200&t=7bc89523cd009c4bd1c5ecca2ced25da"))),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const ListTile(leading: Icon(Icons.people), title: Text("个人中心")),
          const ListTile(leading: Icon(Icons.people), title: Text("个人中心"))
        ]),
      ),
      endDrawer: const Drawer(child: Text("右侧侧边栏")),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            print(index);
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页")
          ]),
      floatingActionButton: Container(
        height: 60,
        width: 60,
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.only(top: 4),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: FloatingActionButton(
          backgroundColor: _currentIndex == 2 ? Colors.yellow : Colors.blue,
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              _currentIndex = 2;
            });
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
