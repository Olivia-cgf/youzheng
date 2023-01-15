import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// create by 张风捷特烈 on 2020/6/30
/// contact me by email 1981462002@qq.com
/// 说明:
///
//    {
//      "widgetId": 262,
//      "name": 'iOS页签基本使用',
//      "priority": 1,
//      "subtitle":
//          "【children】 : 组件Map   【Map<T, Widget>】\n"
//          "【onValueChanged】 : 值改变回调   【ValueChanged<T>】\n"
//          "【groupValue】 : 选中值   【T】\n"
//          "【padding】 : 内边距   【EdgeInsetsGeometry】",
//    }
class CupertinoSegmentedControlDemo extends StatefulWidget {
  const CupertinoSegmentedControlDemo({super.key});

  @override
  _CupertinoSegmentedControlDemoState createState() =>
      _CupertinoSegmentedControlDemoState();
}

class _CupertinoSegmentedControlDemoState
    extends State<CupertinoSegmentedControlDemo> {
  var _value = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoSegmentedControl<int>(
        groupValue: _value,
        onValueChanged: _onValueChanged,
        padding: const EdgeInsets.all(20),
        children: {
          1: const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child:
                Text("DouBam", style: TextStyle(fontSize: 20, inherit: false)),
          ),
          2: ElevatedButton(
            onPressed: () {},
            child: const Text(
              "China",
              style: TextStyle(color: Color.fromARGB(255, 30, 18, 166)),
            ),
          ),
          3: const Text("Brize",
              style: TextStyle(fontSize: 20, inherit: false)),
        },
      ),
    );
  }

  void _onValueChanged(int value) {
    setState(() {
      _value = value;
    });
  }
}
