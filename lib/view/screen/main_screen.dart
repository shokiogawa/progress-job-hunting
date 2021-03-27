import 'package:flutter/material.dart';
import 'package:progress_job_hunting_app/view/page/add_company_page.dart';
import 'package:progress_job_hunting_app/view/page/state_progress_in_company_page.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> _page;
  int _currentIndex = 0;

  @override
  void initState() {
    _page = [AddCompanyPage(), StateProgressInCompanyPage()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.add), title: Text("会社を入力する")),
          BottomNavigationBarItem(icon: Icon(Icons.list), title: Text("選考状況"))
        ],
      ),
    );
  }
}
