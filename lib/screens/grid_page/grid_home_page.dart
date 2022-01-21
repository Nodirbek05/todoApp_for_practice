import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todoapp/core/constant/color_manager.dart';
import 'package:todoapp/core/responsive/size_config.dart';
import 'package:todoapp/models/list.dart';
import 'package:todoapp/widgets/app_bar/app_bar_page.dart';

class GridPage extends StatelessWidget {
  const GridPage({Key? key}) : super(key: key);

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
              "Projects",
              style: TextStyle(
                color: ColorManager.colorofText,
                fontSize: getHeight(15.0),
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: getHeight(15.0),
              left: getWidth(18.0),
              right: getWidth(18.0),
            ),
            child: SizedBox(
              height: getHeight(432.0),
              child: GridView.builder(
                padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    crossAxisSpacing: getWidth(15.0),
                    mainAxisSpacing: getWidth(15.0),
                  ),
                  itemCount: Listofcontexts.taskOfprojects.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(
                          getWidth(5.0),
                        ),
                      ),
                      height: getHeight(200.0),
                      width: getWidth(200.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: getHeight(30.0),
                            backgroundColor:
                                Listofcontexts.colorOFcircle[index],
                            child:
                                SvgPicture.asset(Listofcontexts.icons[index]),
                          ),
                          Text(
                            Listofcontexts.nameOfprojects[index],
                            style: TextStyle(
                              color: ColorManager.black,
                              fontSize: getWidth(15.0),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            Listofcontexts.taskOfprojects[index],
                            style: TextStyle(
                              color: ColorManager.black,
                              fontSize: getWidth(10.0),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
