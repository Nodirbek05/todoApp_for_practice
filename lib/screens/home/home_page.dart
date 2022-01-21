import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todoapp/core/constant/color_manager.dart';
import 'package:todoapp/core/responsive/size_config.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Positioned(
                child: Container(
                  height: getHeight(106.0),
                  width: getWidth(375.0),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/main_rec.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: getHeight(40.0),
                      left: getWidth(25.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hello Brenda",
                                  style: TextStyle(
                                    color: ColorManager.white,
                                    fontSize: getHeight(18.0),
                                  ),
                                ),
                                Text(
                                  "Today you have 9 tasks",
                                  style: TextStyle(
                                    color: ColorManager.white,
                                    fontSize: getHeight(18.0),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: getWidth(75.0),
                            ),
                            CircleAvatar(
                              radius: getHeight(25.0),
                              backgroundColor: ColorManager.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                child: Image.asset(
                  "assets/images/elipse1.png",
                ),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: Image.asset(
                  "assets/images/elipse2.png",
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: getHeight(150.0),
              bottom: getHeight(70.0),
            ),
            child: Center(
              child: SvgPicture.asset(
                "assets/icons/main2_image.svg",
                height: getHeight(164.0),
                width: getWidth(120.0),
              ),
            ),
          ),

          Text(
            "No Tasks ",
            style: TextStyle(
              color: ColorManager.colorofText,
              fontSize: getHeight(22.0),
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
