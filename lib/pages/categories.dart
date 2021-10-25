import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery/utils/categoriesList.dart';
import 'package:grocery/widgets/widgets.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar(context, size, "Categories"),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        physics: BouncingScrollPhysics(),
        itemCount: categoryItems.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _categoryId(categoryItems[index].id, categoryItems[index].name,
                  categoryItems[index].imgUrl, size, context),
            ],
          );
        },
      ),
    );
  }

  Widget _categoryId(List id, String name, String imgUrl, Size size, context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Container(
            height: size.height * 0.10,
            width: size.width * 0.25,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(imgUrl),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(name),
          ),
        ],
      ),
    );
  }
}
