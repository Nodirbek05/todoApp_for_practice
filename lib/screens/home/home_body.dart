import 'package:flutter/material.dart';
import 'package:todoapp/core/constant/color_manager.dart';
import 'package:todoapp/core/responsive/size_config.dart';
import 'package:todoapp/models/list.dart';
import 'package:todoapp/screens/home/home_page.dart';
import 'package:todoapp/widgets/app_bar/app_bar_page.dart';
import 'package:todoapp/widgets/list_part/list_page.dart';
import 'package:todoapp/widgets/list_part/list_page_tomorrow.dart';

class HomeBodyPage extends StatelessWidget {
  const HomeBodyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBarPage().showAppbar(),
          Padding(
            padding: EdgeInsets.only(
              left: getWidth(18.0),
              top: getHeight(10.0),
            ),
            child: Text(
              "Today",
              style: TextStyle(
                color: ColorManager.colorofText,
                fontSize: getHeight(15.0),
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
              height: getHeight(300.0),
              child:
                  Listofcontexts.names != null ? ListPage() : const HomePage()),
          Padding(
            padding: EdgeInsets.only(
              left: getWidth(18.0),
              top: getHeight(10.0),
            ),
            child: Text(
              "Tomorrow",
              style: TextStyle(
                color: ColorManager.colorofText,
                fontSize: getHeight(15.0),
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            height: getHeight(120.0),
            child: ListPageTomorrow(),
          ),
        ],
      ),
    );
  }
}
