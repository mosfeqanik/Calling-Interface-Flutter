import 'package:calling/components/dial_user_pic.dart';
import 'package:flutter/material.dart';

import '../../../components/rounded_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class UserCallingCard extends StatelessWidget {
  const UserCallingCard({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  final String name, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgoundColor,
      width: SizeConfig.screenWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DialUserPic(
            size: 250,
            image: image,
          ),
          VerticalSpacing(of: 10),
          Text(
            name,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          VerticalSpacing(of: 5),
          Text(
            "Calling…",
            style: TextStyle(color: Colors.white60),
          ),
          SizedBox(height: 250,),
          RoundedButton(
            color: kRedColor,
            iconColor: Colors.white,
            size: 48,
            iconSrc: "assets/icons/Icon Close.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
