import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:progress_job_hunting_app/di.dart';

class LoginScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _mailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("ログイン画面"),
        centerTitle: true,
      ),
      body: Container(
        // color: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: ListTile(
                leading: Icon(Icons.email),
                title: TextField(
                  controller: _mailController,
                  decoration: InputDecoration(
                      hintText: "メールアドレスを入力",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.blueGrey)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.blueGrey))),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.vpn_key),
                title: TextField(
                  obscureText: true,
                  controller: _passwordController,
                  decoration: InputDecoration(
                      hintText: "パスワード入力",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.blueGrey)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.blueGrey))),
                ),
              ),
            ),
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.orangeAccent.withOpacity(1)
                ),
                  onPressed: () {
                  context.read(logInPageController).signIn(_mailController.text, _passwordController.text).then((value){
                    Navigator.of(context).pushReplacementNamed('/input_company_page');
                  });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("ログインする"),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
