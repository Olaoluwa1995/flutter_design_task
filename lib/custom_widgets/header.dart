import 'package:design_test/constants/app_images.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey.shade500,
              radius: 20,
              backgroundImage: const AssetImage(AppImages.profilePic),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'Feed',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 22,
                    color: Colors.black),
              ),
            ),
          ],
        ),
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Icon(
                Icons.add,
                size: 25,
                color: Colors.grey,
              ),
            ),
            Icon(
              Icons.mail_outline_outlined,
              size: 25,
              color: Colors.grey,
            ),
          ],
        )
      ],
    );
  }
}
