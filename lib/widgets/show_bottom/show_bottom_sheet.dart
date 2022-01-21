import 'package:flutter/material.dart';
import 'package:todoapp/core/constant/color_manager.dart';
import 'package:todoapp/core/responsive/size_config.dart';

class ShowBottomSheet extends StatelessWidget {
  const ShowBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text(
            "Press the botton",
          ),
          onPressed: () {
            showbottom(context);
          },
        ),
      ),
    );
  }

  showbottom(BuildContext context){
    showModalBottomSheet(
              backgroundColor: Colors.transparent,
              context: context,
              builder: (BuildContext context) {
                return Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Positioned(
                      top: MediaQuery.of(context).size.height / 25,
                      left: 0,
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.elliptical(175, 30),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        top: MediaQuery.of(context).size.height / 2 - 415,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.purpleAccent,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(getWidth(50.0)),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.purpleAccent,
                                      blurRadius: getHeight(10.0),
                                      spreadRadius: getWidth(5.0),
                                      offset: const Offset(0.0, 0.0),
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  Icons.add,
                                  size: getHeight(30.0),
                                  color: ColorManager.white,
                                ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                SizedBox(height: 10),
                                Text(
                                  'Add new task',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                  child: TextFormField(
                                    initialValue: 'Book a table for dinner ',
                                    autofocus: true,
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontStyle: FontStyle.normal),
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                  height: 60,
                                  padding: EdgeInsets.symmetric(vertical: 15),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                        width: 1.0,
                                        color: Colors.grey,
                                      ),
                                      bottom: BorderSide(
                                        width: 1.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                              ],
                            ),
                          ],
                        )),
                  ],
                );
              },
            );
  }
}
