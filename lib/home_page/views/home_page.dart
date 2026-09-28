import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isVisable = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        spacing: 40,
        children: [
          Visibility(
            visible: isVisable,
            child: SizedBox(
              height: 200,
              child: ListView.builder(
                itemBuilder: (context, index) => CustomCard(),
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              isVisable = !isVisable;
              setState(() {});
            },
            child: Text("Show list view"),
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              scrollDirection: Axis.vertical,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 50,
              ),
              itemBuilder: (context, index) => CustomCard(),
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red,
      ),
    );
  }
}
