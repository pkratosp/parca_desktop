import 'package:flutter/material.dart';
import 'package:get/get.dart';

//widgets
import 'package:parca_desktop/widgets/DrawerWidget.dart';
import 'package:parca_desktop/widgets/AppBarWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        // centerTitle: true,
        backgroundColor: Color(0xff8fd400),
        foregroundColor: Color(0xff0f3063),
        elevation: 0,
      ),
      body: Stack(
        children: [
          
          GridView.count(
              crossAxisCount: 6,
              children: [
                Center(
                  child: SizedBox(
                    height: 100,
                    child: Card(
                      color: Colors.blue,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(0),
                          child: Column(
                            children: [
                              Text('Meu titulo'),

                              Text('algo')
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )

              ],
          )
          
        ],
      ),
    );
  }
}
