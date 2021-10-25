import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 70,
          child: SvgPicture.asset("images/profile.svg"),
        ),
        SizedBox(height: 50),
        SizedBox(
          height: size.height * 0.08,
          width: size.width * 0.80,
          child: Card(
            elevation: 17.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Name: ",
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold)),
                  Text("Mikhail Campbell", style: TextStyle(fontSize: 22.0)),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        SizedBox(
          height: size.height * 0.08,
          width: size.width * 0.80,
          child: Card(
            elevation: 17.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Address: ",
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Kingston, Jamaica",
                    style: TextStyle(fontSize: 22.0),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
