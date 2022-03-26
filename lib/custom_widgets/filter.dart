import 'package:design_test/models/filter_model.dart';
import 'package:flutter/material.dart';

class FiltersWidget extends StatefulWidget {
  const FiltersWidget({Key? key}) : super(key: key);

  @override
  State<FiltersWidget> createState() => _FiltersWidgetState();
}

class _FiltersWidgetState extends State<FiltersWidget> {
  int filterIndex = 1;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final filters = Filters.filters;
    return Container(
      height: 30,
      margin: const EdgeInsets.only(top: 20),
      child: ListView.builder(
          padding: EdgeInsets.only(left: size.width * 0.05),
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: filters.length,
          itemBuilder: (BuildContext context, int index) {
            final Filter filter = filters[index];
            return GestureDetector(
              onTap: () {
                setState(() {
                  filterIndex = index + 1;
                });
              },
              child: Container(
                  margin: EdgeInsets.only(
                    right: size.width * 0.04,
                  ),
                  width: size.width * 0.25,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: filterIndex == filter.id
                            ? Colors.transparent
                            : Colors.red),
                    color: filterIndex == filter.id
                        ? Colors.red
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      filter.value,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: filterIndex == filter.id
                            ? Colors.white
                            : Colors.black87,
                      ),
                    ),
                  )),
            );
          }),
    );
  }
}
