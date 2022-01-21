import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/cubit/bottom_nav_bar_cubit/bottomnavbar_cubit.dart';
import 'package:todoapp/routes.dart';
import 'package:todoapp/widgets/list_part/list_page.dart';
import 'package:todoapp/widgets/show_bottom/show_bottom_sheet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomnavbarCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //  home: ShowBottomSheet(),
        initialRoute: '/',
        onGenerateRoute: (settings) => RouteManager.generateRoute(settings),
      ),
    );
  }
}
