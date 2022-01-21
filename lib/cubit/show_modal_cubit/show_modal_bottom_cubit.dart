import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/core/constant/color_manager.dart';
import 'package:todoapp/core/responsive/size_config.dart';
import 'package:todoapp/models/list.dart';

part 'show_modal_bottom_state.dart';

class ShowModalBottomCubit extends Cubit<ShowModalBottomState> {
  int selectedItem = 0;
  TextEditingController taskcontroller = TextEditingController();
  ShowModalBottomCubit() : super(ShowModalBottomInitial());

  changeItem(int teppedItem) {
    selectedItem = teppedItem;
    emit(ShowModalBottomInitial());
  }

  showbottom(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, state) {
            return Stack(
              alignment: Alignment.center,
              children: [
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
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: getWidth(50.0),
                          height: getHeight(50.0),
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
                        children: [
                          SizedBox(height: getHeight(10.0)),
                          Text(
                            'Add new task',
                            style: TextStyle(
                                fontSize: getHeight(13.0),
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: getHeight(10.0)),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.2,
                            child: TextFormField(
                              controller: taskcontroller,
                              style: TextStyle(
                                  fontSize: getHeight(22.0),
                                  fontStyle: FontStyle.normal),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "Book a table for dinner",
                              ),
                            ),
                          ),
                          SizedBox(height: getHeight(5.0)),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.2,
                            height: getWidth(60.0),
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            decoration: const BoxDecoration(
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
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              children: [
                                Center(
                                  child: GestureDetector(
                                    onTap: () {
                                      state.call(() {
                                        changeItem(1);
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: getWidth(5.0)),
                                      height: getHeight(30.0),
                                      decoration: BoxDecoration(
                                        color: selectedItem == 1
                                            ? Colors.yellowAccent
                                            : Colors.transparent,
                                        borderRadius: BorderRadius.circular(
                                          getWidth(5),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          CircleAvatar(
                                            radius: getWidth(5.0),
                                            backgroundColor:
                                                Colors.yellowAccent,
                                          ),
                                          SizedBox(
                                            width: getWidth(4.0),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                              right: getWidth(10.0),
                                            ),
                                            child: const Text('Personal'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: GestureDetector(
                                    onTap: () {
                                      state.call(() {
                                        changeItem(2);
                                      });
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: getHeight(30.0),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: getWidth(5.0)),
                                      decoration: BoxDecoration(
                                        color: selectedItem == 2
                                            ? Colors.greenAccent
                                            : Colors.transparent,
                                        borderRadius: BorderRadius.circular(
                                          getWidth(5.0),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CircleAvatar(
                                            radius: getWidth(5.0),
                                            backgroundColor: Colors.greenAccent,
                                          ),
                                          SizedBox(
                                            width: getWidth(4.0),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                              right: getWidth(10.0),
                                            ),
                                            child: const Text('Work'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: GestureDetector(
                                    onTap: () {
                                      state.call(() {
                                        changeItem(3);
                                      });
                                    },
                                    child: Container(
                                      height: getHeight(30.0),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: getWidth(5.0)),
                                      decoration: BoxDecoration(
                                        color: selectedItem == 3
                                            ? Colors.red
                                            : Colors.transparent,
                                        borderRadius: BorderRadius.circular(
                                          getWidth(5.0),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CircleAvatar(
                                            radius: getWidth(5.0),
                                            backgroundColor: Colors.red,
                                          ),
                                          SizedBox(
                                            width: getWidth(4.0),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                              right: getWidth(10.0),
                                            ),
                                            child: const Text('Meeting'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: GestureDetector(
                                    onTap: () {
                                      state.call(() {
                                        changeItem(4);
                                      });
                                    },
                                    child: Container(
                                      height: getHeight(30.0),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: getWidth(5.0)),
                                      decoration: BoxDecoration(
                                        color: selectedItem == 4
                                            ? Colors.blue
                                            : Colors.transparent,
                                        borderRadius: BorderRadius.circular(
                                          getWidth(5.0),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          CircleAvatar(
                                            radius: getWidth(5.0),
                                            backgroundColor: Colors.blue,
                                          ),
                                          SizedBox(
                                            width: getWidth(4.0),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                              right: getWidth(10.0),
                                            ),
                                            child: const Text('Study'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: GestureDetector(
                                    onTap: () {
                                      state.call(() {
                                        changeItem(5);
                                      });
                                    },
                                    child: Container(
                                      height: getHeight(30.0),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: getWidth(5.0)),
                                      decoration: BoxDecoration(
                                        color: selectedItem == 5
                                            ? Colors.orange
                                            : Colors.transparent,
                                        borderRadius: BorderRadius.circular(
                                          getWidth(5.0),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          CircleAvatar(
                                            radius: getWidth(5.0),
                                            backgroundColor: Colors.orange,
                                          ),
                                          SizedBox(
                                            width: getWidth(4.0),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                              right: getWidth(10.0),
                                            ),
                                            child: const Text('Shopping'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: getHeight(10.0)),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.2,
                            child: Text(
                              'Choose date',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: getWidth(12.0)),
                            ),
                          ),
                          SizedBox(
                            height: getHeight(10.0),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.2,
                            child: Row(
                              children: [
                                Text(
                                  'Today, 19:00 - 21:00',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: getWidth(12.0),
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: getWidth(5.0),
                                ),
                                const RotatedBox(
                                  quarterTurns: 1,
                                  child: Icon(Icons.chevron_right),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: getHeight(20.0),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  getWidth(5.0),
                                ),
                              ),
                              fixedSize: Size(
                                getWidth(323),
                                getHeight(53),
                              ),
                              primary: ColorManager.colorOfRectangle,
                            ),
                            onPressed: () {
                              if (selectedItem == 1) {
                                // Listofcontexts.colors.add(Colors.yellowAccent);
                                Listofcontexts.colors.insert(0, Colors.yellowAccent);
                                Listofcontexts.names.add(taskcontroller.text);
                              } else if (selectedItem == 2) {
                                Listofcontexts.colors.add(Colors.greenAccent);
                                Listofcontexts.names.add(taskcontroller.text);
                              } else if (selectedItem == 3) {
                                Listofcontexts.colors.add(Colors.red);
                                Listofcontexts.names.add(taskcontroller.text);
                              } else if (selectedItem == 4) {
                                Listofcontexts.colors.add(Colors.blue);
                                Listofcontexts.names.add(taskcontroller.text);
                              } else if (selectedItem == 5) {
                                Listofcontexts.colors.add(Colors.orange);
                                Listofcontexts.names.add(taskcontroller.text);
                              }
                              print(Listofcontexts.names.toString());
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Add Tasks",
                              style: TextStyle(
                                color: ColorManager.white,
                                fontSize: getWidth(18.0),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
