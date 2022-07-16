import 'package:flutter/material.dart';

import '../constants.dart';
import 'avatar.dart';
import 'vertical_block.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),

      //BoxDecoration(border: Border.all(color: Colors.black)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.lock_outline, color: Colors.black, size: 18),
              Text("billysalesman72", style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: K.fontFamilyRoboto)),
            ],
          ),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Avatar(K.testimonialAvatar),
              VerticalBlock(count: 10, label: K.posts),
              VerticalBlock(count: 146, label: K.followers),
              VerticalBlock(count: 172, label: K.following),
            ],
          ),
          const SizedBox(height: 8.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(K.testimonialName, style: Theme.of(context).textTheme.subtitle2),
                  Icon(Icons.verified, color: Colors.blue),
                ],
              ),
              const SizedBox(height: 12.0),
              Text(
                K.footerText,
                style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: K.fontFamilyRoboto),
              ),
              const SizedBox(height: 12.0),
              Container(
                  height: 42.0,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.blue),
                          foregroundColor: MaterialStateProperty.all(Colors.white),
                          padding: MaterialStateProperty.all(EdgeInsets.all(6.0)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)))),
                      onPressed: () {},
                      child: Text("View profile", style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: K.fontFamilyRoboto)))),
            ],
          ),
        ],
      ),
    );
  }
}
