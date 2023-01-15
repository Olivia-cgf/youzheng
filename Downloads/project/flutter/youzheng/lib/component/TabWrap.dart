/*
 * @Author: Oliva-cgf 1756303507@qq.com
 * @Date: 2023-01-08 21:14:41
 * @LastEditors: Oliva-cgf 1756303507@qq.com
 * @LastEditTime: 2023-01-09 21:32:18
 * @FilePath: /youzheng/lib/component/TabWrap.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:youzheng/mock/tabs.dart';
import 'package:youzheng/component/TitleComponent.dart';

class TabWrap extends StatefulWidget {
  const TabWrap({super.key});

  @override
  State<TabWrap> createState() => _TabWrapState();
}

class _TabWrapState extends State<TabWrap> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  int _currentIndex = 0;

  // 生命周期函数:当组件初始化的时候就会触发
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabNav.length, vsync: this);

// 监听_tabController

    _tabController.addListener(() {
      // 注意如果数据为空进行先行断言 等同于js中的?.
      if (_tabController.animation!.value == _tabController.index) {
        print(_tabController.index);
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Widget> _initListTabBar() {
    return tabNav.map((value) => Tab(child: Text(value['title']))).toList();
  }

  List<Widget> _initListTabView() {
    return tabNav
        .map((e) => Column(
              children: const [
                Text("AMs=>12312"),
                Text(
                  "choose Image",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(child: _buildTabBar()),
        Container(child: _buildTabBarView())
      ],
    );
  }

  Widget _buildTabBar() => TabBar(
      controller: _tabController, // 去掉属性
      tabs: _initListTabBar());

  Widget _buildTabBarView() => TabBarView(
        controller: _tabController, // 去掉属性
        children: _initListTabView(),
      );
}
