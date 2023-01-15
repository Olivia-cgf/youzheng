import 'package:flutter/material.dart';
import 'package:youzheng/pages/FoundPage.dart';
import 'package:youzheng/pages/MyPage.dart';
import 'package:youzheng/pages/TravelPage.dart';

import '../component/SwiperPage.dart';
import './../mock/country.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentIndex = 0;

// 如何找对应的页面
  final List<Widget> _pages = const [
    HomePage(),
    FoundPage(),
    TravelPage(),
    MyPage()
  ];

  // 生命周期函数:当组件初始化的时候就会触发
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: listData.length, vsync: this);

// 监听_tabController

    _tabController.addListener(() {
      // 注意如果数据为空进行先行断言 等同于js中的?.
      if (_tabController.animation!.value == _tabController.index) {
        print(_tabController.index);
      }
    });
  }

  List<Widget> _initListTabBar() {
    return listData
        .map((value) => Tab(
                child: Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color.fromARGB(255, 99, 147, 238),
                border: Border.all(
                    color: const Color.fromARGB(255, 99, 147, 238), width: 0),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  value['title'],
                ),
              ),
            )))
        .toList();
  }

  List<Widget> _initListTabView() {
    return listData.map((e) => const SwiperPage()).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
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
                            fontSize: 28,
                            fontFamily: "monospace",
                            fontWeight: FontWeight.w900),
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.menu,
                        color: Colors.black,
                      ),
                    )),
              ],
            ),
          ),
          bottom: TabBar(
              isScrollable: true,
              indicatorPadding: const EdgeInsets.all(0),
              indicatorSize: TabBarIndicatorSize.label,
              // unselectedLabelColor: Colors.black,
              indicator: BoxDecoration(
                color: const Color.fromARGB(255, 137, 170, 231),
                borderRadius: BorderRadius.circular(20),
              ),
              labelStyle: const TextStyle(fontSize: 14, color: Colors.white),
              unselectedLabelStyle: const TextStyle(
                  fontSize: 14, color: Color.fromARGB(255, 137, 170, 231)),
              controller: _tabController, // 去掉属性
              tabs: _initListTabBar())),
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(0, 255, 255, 255),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
          ),
          child: BottomNavigationBar(
              currentIndex: _currentIndex,
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              selectedItemColor: Colors.black,
              //设置图标尺寸
              iconSize: 20,
              unselectedItemColor: const Color.fromARGB(56, 49, 49, 49),
              type: BottomNavigationBarType.fixed,
              onTap: (index) {
                print(index);
                setState(() {
                  _currentIndex = index;
                });
              },
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Found"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.admin_panel_settings), label: "Travel"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.supervised_user_circle), label: "My")
              ])),
    );
  }
}
