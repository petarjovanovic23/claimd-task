import 'package:claimd_task/k.dart';
import 'package:claimd_task/widgets/avatar.dart';
import 'package:flutter/material.dart';

class Testimonial extends StatelessWidget {
  const Testimonial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 260,
        width: 720,
        decoration: const BoxDecoration(
          color: Color(0xfff4978e),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              K.testimonial,
              style: TextStyle(fontSize: 42, fontStyle: FontStyle.italic, color: Colors.white, fontFamily: K.fontFamilyIbarra),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const CircleAvatar(radius: 42, backgroundImage: NetworkImage(K.testimonialAvatar)),
                  Column(children: const [Text(K.testimonialName), Text(K.testimonialWork)])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
