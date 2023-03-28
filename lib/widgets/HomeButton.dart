import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeButton extends StatelessWidget {
  var title;
  var route;
  var key;
  var image;

  // const HomeButton({Key? key}) : super(key: key);


  HomeButton({this.title, this.route, this.image, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //0xFF8FD400
    return Card(
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [Color(0xff0CBA1C),Color(0xff9ECE0B)],
          ),
          // color: Color.fromRGBO(143, 212, 0, 1),
          borderRadius: BorderRadius.circular(20),

        ),
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

                Image.asset(image, height: 40,),

                SizedBox(height: 15,),
                
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0F3063)
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
