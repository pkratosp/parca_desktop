import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeButton extends StatelessWidget {
  var title;
  var route;
  var key;

  // const HomeButton({Key? key}) : super(key: key);


  HomeButton({this.title, this.route, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      color: Color(0xFF8FD400),
      child: TextButton(
        onPressed: (){
          Get.toNamed(route);
        },
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0F3063)
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
