import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/core/responsive/size_config.dart';
import 'package:todoapp/cubit/bottom_nav_bar_cubit/bottomnavbar_cubit.dart';
import 'package:todoapp/cubit/show_modal_cubit/show_modal_bottom_cubit.dart';

class BottomNavBarView extends StatelessWidget {
  const BottomNavBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => BottomnavbarCubit(),
        ),
        BlocProvider(
          create: (context) => ShowModalBottomCubit(),
        ),
      ],
      child: BlocBuilder<BottomnavbarCubit, BottomnavbarState>(
        builder: (context, state) {
          var _context = context.watch<BottomnavbarCubit>();
          return Scaffold(
            body: _context.pages[_context.pageIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _context.pageIndex,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    size: getHeight(30.0),
                  ),
                  label: "home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.grid_view_outlined,
                    size: getHeight(30.0),
                  ),
                  label: "Second Page",
                ),
              ],
              onTap: (int index) {
                context.read<BottomnavbarCubit>().changePages(index);
              },
            ),
            floatingActionButton: BlocProvider.value(
              value: BlocProvider.of<ShowModalBottomCubit>(context),
              child: FloatingActionButton(
                backgroundColor: Colors.purpleAccent,
                onPressed: () {
                  context.read<ShowModalBottomCubit>().showbottom(context);
                },
                child: Icon(
                  Icons.add,
                  size: getHeight(30.0),
                ),
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
          );
        },
      ),
    );
  }
}
