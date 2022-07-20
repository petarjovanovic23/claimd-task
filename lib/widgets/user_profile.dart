import 'package:flutter/material.dart';

import '../models/user.dart';
import '../constants.dart';

import 'visit_button.dart';
import 'avatar.dart';
import 'vertical_block.dart';

class UserProfile extends StatelessWidget {
  final User user;
  const UserProfile(this.user, {Key? key}) : super(key: key);

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
        Text(
          user.biography != "empty" ? user.biography : "",
          style: const TextStyle(color: Colors.black, fontSize: 20, fontFamily: K.fontFamilyRoboto),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 12.0),
        VisitButton(user.username),
      ],
    );
  }

  Row buildName(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(user.name, style: Theme.of(context).textTheme.subtitle2),
        user.isVerified ? const Icon(Icons.verified, color: Colors.blue) : const SizedBox.shrink(),
      ],
    );
  }

  Row buildUsername() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        user.isPrivate
            ? const Icon(Icons.lock_outline, color: Colors.black, size: 18)
            : const Icon(Icons.lock_open_outlined, color: Colors.black, size: 18),
        Text(user.username, style: const TextStyle(color: Colors.black, fontSize: 20, fontFamily: K.fontFamilyRoboto)),
      ],
    );
  }

  Row buildAvatarAndBlocks() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Avatar(user.imageUrl),
        VerticalBlock(count: user.postsCount, label: K.posts),
        VerticalBlock(count: user.followingCount, label: K.followers),
        VerticalBlock(count: user.followsCount, label: K.following),
      ],
    );
  }
}
