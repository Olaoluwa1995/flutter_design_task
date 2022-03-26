import 'package:design_test/custom_widgets/content_list.dart';
import 'package:design_test/custom_widgets/filter.dart';
import 'package:design_test/custom_widgets/header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: size.width,
      padding: EdgeInsets.only(
        top: size.height * 0.02,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: const Header(),
            ),
            const FiltersWidget(),
            const ContentList(),
          ],
        ),
      ),
    );
  }
}
