import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants.dart';

class VisitButton extends StatelessWidget {
  final String username;
  const VisitButton(this.username, {Key? key}) : super(key: key);

  Future<void> _launchUrl() async {
    final Uri url = Uri.parse("https://instagram.com/$username");
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42.0,
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            padding: MaterialStateProperty.all(const EdgeInsets.all(6.0)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)))),
        onPressed: _launchUrl,
        child: const Text(
          K.viewButton,
          style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: K.fontFamilyRoboto),
        ),
      ),
    );
  }
}
