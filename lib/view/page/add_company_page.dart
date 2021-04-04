import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:progress_job_hunting_app/di.dart';

class AddCompanyPage extends HookWidget {
  final TextEditingController _companyNameController = TextEditingController();
  final TextEditingController _memoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final state = useProvider(addCompanyPageController.state);
    return Scaffold(
      appBar: AppBar(
        actions: state.isLoading
            ? [
                Center(child: Text("保存中...")),
              ]
            : [
                IconButton(
                    icon: Text("保存"),
                    onPressed: () {
                      context.read(addCompanyPageController).saveCompanyInfo(
                          state.companyState,
                          _companyNameController.text,
                          _memoController.text);
                    })
              ],
        title: Text("会社を入力"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Consumer(
                builder: (context, watch, child) {
                  final state = watch(addCompanyPageController.state);
                  return DropdownButton<String>(
                    isExpanded: true,
                    value: state.companyState,
                    items: ["説明会", "ES提出", "一次選考", "二次選考", "三次選考", "最終選考"]
                        .map((String value) {
                      return DropdownMenuItem(value: value, child: Text(value));
                    }).toList(),
                    onChanged: (companyState) {
                      context
                          .read(addCompanyPageController)
                          .fetchCompanyState(companyState);
                    },
                  );
                },
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
      ),
    );
  }
}
