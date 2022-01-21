import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todoapp/core/constant/color_manager.dart';
import 'package:todoapp/core/responsive/size_config.dart';
import 'package:todoapp/cubit/home_body_cubit/homebody_cubit.dart';
import 'package:todoapp/models/list.dart';

// ignore: must_be_immutable
class ListPageTomorrow extends StatelessWidget {
  ListPageTomorrow({Key? key}) : super(key: key);
  int? value;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: (_) => HomebodyCubit(),
      child: BlocBuilder<HomebodyCubit, HomebodyState>(
        builder: (context, state) {
          var _context = context.watch<HomebodyCubit>();
          return Scaffold(
            body: ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: Listofcontexts.names.length,
              itemBuilder: (context, index) {
                return dismissiblePart(_context, index, context);
              },
            ),
          );
        },
      ),
    );
  }

  Dismissible dismissiblePart(
      HomebodyCubit _context, int index, BuildContext context) {
    return Dismissible(
      background: Container(
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.delete,
              color: ColorManager.white,
            ),
            Text("Delete",
                style: TextStyle(
                  color: ColorManager.white,
                )),
          ],
        ),
      ),
      key: ValueKey<int>(_context.items[index]),
      onDismissed: (DismissDirection direction) {
        _context.deleteDismis(index);
      },
      child: Card(
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.only(
                top: getHeight(100.0),
              ),
              height: getHeight(55.0),
              width: getWidth(4.0),
              decoration: BoxDecoration(
                color: Listofcontexts.colors[index],
                borderRadius: BorderRadius.circular(
                  getWidth(5.0),
                ),
              ),
            ),
            Radio(
                value: Listofcontexts.radioValue[index],
                groupValue: _context.value,
                onChanged: (v) {
                  context.read<HomebodyCubit>().onchangeingPoint(v);
                }),
            Text(
              Listofcontexts.clocks[index],
              style: TextStyle(
                color: ColorManager.grey,
                fontSize: getHeight(13.0),
              ),
            ),
            SizedBox(
              width: getWidth(10.0),
            ),
            SizedBox(
              width: getWidth(248.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Listofcontexts.names[index],
                    style: TextStyle(
                      color: ColorManager.colorofText,
                      fontSize: getHeight(16.0),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: getWidth(20.0),
                  ),
                  SvgPicture.asset(
                    "assets/icons/bell2.svg",
                    height: getHeight(20.0),
                    width: getWidth(20.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
