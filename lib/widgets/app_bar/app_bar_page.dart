import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todoapp/core/constant/color_manager.dart';
import 'package:todoapp/core/responsive/size_config.dart';

class AppBarPage {
  showAppbar(){
    return  Stack(
            children: [
              Positioned(
                child: Container(
                  height: getHeight(238.0),
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
              Positioned(
                top: getHeight(120.0),
                left: getWidth(18.0),
                right: getWidth(18.0),
                child: Container(
                  height: getHeight(106.0),
                  width: getWidth(339.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      getWidth(5.0),
                    ),
                    color: Colors.white30,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: getWidth(16.0),
                          top: getHeight(11.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Today Reminder",
                              style: TextStyle(
                                color: ColorManager.white,
                                fontSize: getHeight(20.0),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: getHeight(10.0),
                            ),
                            Text(
                              "Meeting with client",
                              style: TextStyle(
                                color: ColorManager.white,
                                fontSize: getHeight(11.0),
                              ),
                            ),
                            SizedBox(
                              height: getHeight(10.0),
                            ),
                            Text(
                              "13.00 PM",
                              style: TextStyle(
                                color: ColorManager.white,
                                fontSize: getHeight(11.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: getWidth(75.0),
                      ),
                      SizedBox(
                        child: SvgPicture.asset(
                          "assets/icons/bell.svg",
                          height: getHeight(86.0),
                          width: getWidth(53.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
  }
}