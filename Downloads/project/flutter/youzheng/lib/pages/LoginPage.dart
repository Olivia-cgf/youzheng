/*
 * @Author: Oliva-cgf 1756303507@qq.com
 * @Date: 2023-01-04 22:30:42
 * @LastEditors: Oliva-cgf 1756303507@qq.com
 * @LastEditTime: 2023-01-07 18:29:22
 * @FilePath: /youzheng/lib/pages/LoginPage.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _unameController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();
  final GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        const SizedBox(height: 100),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Sign up",
              style:
                  TextStyle(fontSize: 20, fontFamily: "Courier", height: 1.2),
            ),
          ],
        ),
        Container(
          //  alignment:Alignment.center,
          padding: const EdgeInsets.all(50),
          child: Form(
            key: _formKey, //设置globalKey，用于后面获取FormState
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), // 配置圆角
                      boxShadow: const [
                        // 配置阴影
                        BoxShadow(color: Colors.blue, blurRadius: 10.0)
                      ],
                      color: Colors.white, // 背景颜色
                    ),
                    child: TextFormField(
                      autofocus: true,
                      controller: _unameController,
                      decoration: const InputDecoration(
                          labelText: "用户名",
                          hintText: "用户名或邮箱",
                          icon: Icon(Icons.person),
                          border: InputBorder.none //隐藏下划线
                          ),
                      // 校验用户名
                      validator: (v) {
                        return v!.trim().isNotEmpty ? null : "用户名不能为空";
                      },
                    )),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), // 配置圆角
                    boxShadow: const [
                      // 配置阴影
                      BoxShadow(color: Colors.blue, blurRadius: 10.0)
                    ],
                    color: Colors.white, // 背景颜色
                  ),
                  child: TextFormField(
                    controller: _pwdController,
                    decoration: const InputDecoration(
                        labelText: "密码",
                        hintText: "您的登录密码",
                        icon: Icon(Icons.lock),
                        border: InputBorder.none //隐藏下划线
                        ),
                    obscureText: true,
                    //校验密码
                    validator: (v) {
                      return v!.trim().length > 5 ? null : "密码不能少于6位";
                    },
                  ),
                ),

                // 登录按钮
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: ElevatedButton(
                          // style:ButtonStyle(BorderRadius.circular(20)),
                          child: const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text("登录"),
                          ),
                          onPressed: () {
                            // 通过_formKey.currentState 获取FormState后，
                            // 调用validate()方法校验用户名密码是否合法，校验
                            // 通过后再提交数据。
                            if ((_formKey.currentState as FormState)
                                .validate()) {
                              //验证通过提交数据
                              Navigator.pushNamed(context, "/");
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
