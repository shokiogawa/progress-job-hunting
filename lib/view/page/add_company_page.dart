import 'package:flutter/material.dart';

class AddCompanyPage extends StatelessWidget {
  final TextEditingController _companyNameController = TextEditingController();
  final TextEditingController _memoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(icon: Text("保存"), onPressed: null)
        ],
        title: Text("会社を入力"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(hintText: "会社名"),
                maxLines: 1,
                controller: _companyNameController,
              ),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("メモ"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    maxLines: 10,
                    controller: _memoController,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
