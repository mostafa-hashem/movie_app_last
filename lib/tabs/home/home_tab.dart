import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/widgets/popular_widget.dart';
import 'package:untitled1/widgets/top_rated_widget.dart';
import 'package:untitled1/widgets/up_coming_widget.dart';

class HomeTab extends StatelessWidget {
  static const String routeName = "HomeScreen";

  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const PopularWidget(),
          SizedBox(
            height: 20.h,
          ),
          const TopRatedWidget(),
          SizedBox(
            height: 20.h,
          ),
          const UpComingWidget(),
        ],
      ),
    );
  }
}
