import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todoapp/core/constant/color_manager.dart';
import 'package:todoapp/core/responsive/size_config.dart';

class EnteringPage extends StatelessWidget {
  const EnteringPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: getHeight(182.0),
              left: getWidth(100.0),
              right: getWidth(100.0),
              bottom: getHeight(114.0),
            ),
            child: SvgPicture.asset(
              "assets/icons/main_image.svg",
              height: getHeight(195.0),
              width: getWidth(180.0),
            ),
          ),
          Text(
            "Reminders made simple",
            style: TextStyle(
              color: ColorManager.colorofText,
              fontSize: getHeight(22.0),
              fontWeight: FontWeight.w700,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top:getHeight(171.0),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    getWidth(10.0),
                  ),
                ),
                primary: ColorManager.colorofElevated,
                fixedSize: Size(
                  getWidth(285.0),
                  getHeight(56.0),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/bottom_nav_bar_view");
              },
              child: Text(
                "Get Started",
                style: TextStyle(
                  color: ColorManager.whitecolor,
                  fontSize: getHeight(15.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
