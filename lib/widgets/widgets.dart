import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Padding scaffoldButton(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 30.0,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              color: Colors.white),
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              color: Colors.white),
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ],
    ),
  );
}

Column categoryIcons(BuildContext context, String imgUrl, String name) {
  Size size = MediaQuery.of(context).size;
  return Column(children: [
    Container(
      height: size.height * 0.20,
      width: size.width * 0.40,
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
        padding: const EdgeInsets.all(20.0),
        child: SvgPicture.asset(imgUrl),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text(name),
    ),
  ]);
}

AppBar appBar(BuildContext context, Size size, String title) {
  return AppBar(
    centerTitle: true,
    elevation: 0,
    backgroundColor: Colors.transparent,
    title: Text(
      title,
      style: TextStyle(
        fontSize: 18,
        color: Colors.grey,
        fontWeight: FontWeight.bold,
      ),
    ),
    leading: IconButton(
      onPressed: () => Navigator.of(context).pop(),
      icon: Icon(Icons.arrow_back, color: Theme.of(context).primaryColor),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Icon(Icons.shopping_cart_outlined,
            color: Theme.of(context).primaryColor),
      )
    ],
  );
}
