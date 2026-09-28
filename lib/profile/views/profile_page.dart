import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,

        asda

        child: Scaffold(
          appBar: AppBar(
            title: Text("Whats app"),
            bottom: TabBar(
              isScrollable: false,
              padding: EdgeInsets.only(top: 10),
              indicatorColor: Colors.red,
              indicatorSize: TabBarIndicatorSize.tab,
              dividerColor: Colors.transparent,

              // indicator: BoxDecoration(borderRadius: BorderRadius.circular(10)),
              tabs: [
                Tab(icon: Icon(Icons.percent)),
                Tab(icon: Icon(Icons.category_rounded)),
                Tab(icon: Icon(Icons.shopping_bag)),
              ],
            ),
          ),
          body: Center(),
        ),
      ),
    );
  }
}
