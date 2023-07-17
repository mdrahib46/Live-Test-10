import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.orientationOf(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('News Feed'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.landscape) {
            return ListView.builder(itemCount: 1, itemBuilder: (context, index){
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        height: 200,
                        width: 200,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        height: 200,
                        width: 200,
                        color: Colors.grey,
                      ),
                    ],
                  )
                ],
              );
            },);
          }

          return ListView.builder(itemCount: 10, itemBuilder: (context, index){
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  height: 200,
                  width: 200,
                  color: Colors.grey,
                )
              ],
            );
          },);
        },
      ),
    );
  }
}



// Center(
// child:
// );