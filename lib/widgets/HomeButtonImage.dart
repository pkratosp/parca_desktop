import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parca_desktop/routes.dart';

class HomeButtonImage extends StatelessWidget {
  // const HomeButtonImage({Key? key}) : super(key: key);
  var image;

  HomeButtonImage({ this.image, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.transparent
        ),
        onPressed: () async {
          Get.toNamed(Routes.pixfacilFotoRosto);
        },
        child: Image.asset(image),
      ),
    );
  }
}
