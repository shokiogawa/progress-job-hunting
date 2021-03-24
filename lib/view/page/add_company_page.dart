import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AddCompanyPage extends StatelessWidget {
  final TextEditingController _companyNameController = TextEditingController();
  final TextEditingController _memoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(icon: Text("保存"), onPressed: null)],
        title: Text("会社を入力"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: DropdownButton<String>(
              isExpanded: true,
              value: "説明会",
              items: ["説明会", "ES提出", "一次選考", "二次選考", "三次選考", "最終選考"].map((String value) {
                return DropdownMenuItem(value: value, child: Text(value));
              }).toList(),
              onChanged: (value){print(value);},
            ),
          ),
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
