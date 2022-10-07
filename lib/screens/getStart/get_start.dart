import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oranos_experts/screens/getStart-1/get_start_chat.dart';

class GetStart extends StatelessWidget {
  const GetStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Facebook',
                          fontWeight: FontWeight.w400),
                      children: <TextSpan>[
                        TextSpan(text: 'Hi, My name is '),
                        TextSpan(
                            text: 'Oranobot\n',
                            style: TextStyle(
                                fontFamily: 'Facebook',
                                fontWeight: FontWeight.w700)),
                        TextSpan(
                            text:
                                'I will always be there to\nhelp and assist you.\n\n'),
                        TextSpan(text: 'Say Start To go to Next.')
                      ],
                    ),
                  ),
                  Positioned(
                      top: -30,
                      right: -40,
                      child: SvgPicture.asset(
                        'assets/Path 107.svg',
                        height: 250,
                      ))
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              SvgPicture.asset('assets/Group 106.svg'),
              const SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GetStart1()));
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                    child: Text(
                      'Next',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.language),
                  Text(
                    '  English',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
