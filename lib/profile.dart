import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProfileScreen extends StatelessWidget {
  MyProfileScreen({super.key});

  final Uri theUrl = Uri.parse('https://github.com/kr3a7ion');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/thebackground.jpg'),
        )),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(top: 65, bottom: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 30,
                    bottom: 20,
                  ),
                  height: 180,
                  width: 180,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(119, 255, 255, 255),
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(100),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/profile.jpeg'),
                      )),
                ),
                const Text(
                  'OKANLAWON  GIDEON',
                  style: TextStyle(
                    color: Color(0xffF27B29),
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Montserrat',
                    letterSpacing: 2,
                  ),
                ),
                const Text(
                  'Flutter Developer',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 2,
                      fontFamily: 'Play'),
                ),
                const CustomText(
                  theText: 'Slack: @okanlawon gideon',
                ),
                const CustomText(theText: 'Github: @kr3a7ion'),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.mail,
                      size: 17,
                      color: Color(0xffF27B29),
                    ),
                    CustomText(theText: ' okanlawon.a.gideon@gmail.com'),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    onPressed: () {
                      launchUrl(theUrl, mode: LaunchMode.platformDefault);
                    },
                    child: const Text(
                      'Open GitHub',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 43, 78),
                        fontWeight: FontWeight.w800,
                        fontSize: 17,
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    required this.theText,
  }) : super(key: key);

  final String theText;

  @override
  Widget build(BuildContext context) {
    return Text(
      theText,
      style: const TextStyle(
          fontSize: 16,
          color: Colors.grey,
          fontStyle: FontStyle.italic,
          fontFamily: 'Play',
          letterSpacing: 1),
    );
  }
}
