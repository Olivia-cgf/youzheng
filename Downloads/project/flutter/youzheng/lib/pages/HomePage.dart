import 'package:flutter/material.dart';

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
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(241, 244, 212, 12)),
                    foregroundColor: MaterialStateProperty.all(Colors.black45)),
                onPressed: () {},
                child: Text(value['title']))))
        .toList();
  }

  List<Widget> _initListTabView() {
    return listData
        .map((e) => ListView(
              children: [
                Card(
                    elevation: 10,
                    child: Image.network(
                        "https://img1.baidu.com/it/u=1845556535,2973910963&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500",
                        width: 300,
                        height: 400,
                        fit: BoxFit.cover)),
                Card(
                    elevation: 10,
                    child: Image.network(
                        "https://img1.baidu.com/it/u=1845556535,2973910963&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500",
                        width: 300,
                        height: 400,
                        fit: BoxFit.cover))
              ],
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Flex(
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
                        fontSize: 20,
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
          bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.blue,
              indicatorWeight: 2,
              indicatorPadding: const EdgeInsets.all(10),
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.white,
              labelStyle: const TextStyle(fontSize: 14),
              unselectedLabelStyle: const TextStyle(fontSize: 12),
              controller: _tabController, // 去掉属性
              tabs: _initListTabBar())),
      body: TabBarView(
        controller: _tabController, // 去掉属性
        children: _initListTabView(),
        // ListView(
        //   children: const [ListTile(title: Text("我是关注列表1"))],
        // ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          backgroundColor: Colors.blue[600],
          onTap: (index) {
            print(index);
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Color.fromARGB(255, 117, 166, 209),
                icon: Icon(Icons.home),
                label: "首页"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "发现"),
            BottomNavigationBarItem(
                icon: Icon(Icons.admin_panel_settings), label: "工具"),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle), label: "我的")
          ]),
    );
  }
}
