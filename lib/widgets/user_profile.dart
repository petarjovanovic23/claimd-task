import 'package:flutter/material.dart';

import '../constants.dart';

import 'view_button.dart';
import 'avatar.dart';
import 'vertical_block.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildUsername(),
          const SizedBox(height: 8.0),
          buildAvatarAndBlocks(),
          const SizedBox(height: 8.0),
          buildUserBio(context),
        ],
      ),
    );
  }

  Column buildUserBio(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildName(context),
        const SizedBox(height: 12.0),
        const Text(
          K.footerText,
          style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: K.fontFamilyRoboto),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 12.0),
        const ViewButton(),
      ],
    );
  }

  Row buildName(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(K.testimonialName, style: Theme.of(context).textTheme.subtitle2),
        const Icon(Icons.verified, color: Colors.blue),
      ],
    );
  }

  Row buildUsername() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Icon(Icons.lock_outline, color: Colors.black, size: 18),
        Text("billysalesman72", style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: K.fontFamilyRoboto)),
      ],
    );
  }

  Row buildAvatarAndBlocks() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        Avatar(K.testimonialAvatar),
        VerticalBlock(count: 10, label: K.posts),
        VerticalBlock(count: 146, label: K.followers),
        VerticalBlock(count: 172, label: K.following),
      ],
    );
  }
}
