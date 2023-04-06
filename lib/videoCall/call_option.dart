import 'package:appcode3/en.dart';
import 'package:appcode3/main.dart';
import 'package:appcode3/videoCall/video_call.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CallOption extends StatelessWidget {
  const CallOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            header(context),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VideoCall(),
                      ),
                    );
                  },
                  child: Text('Set Call'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Join Call'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget header(context) {
    return Stack(
      children: [
        Image.asset(
          "assets/moreScreenImages/header_bg.png",
          height: 60,
          fit: BoxFit.fill,
          width: MediaQuery.of(context).size.width,
        ),
        Container(
          height: 60,
          child: Row(
            children: [
              SizedBox(
                width: 15,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  "assets/moreScreenImages/back.png",
                  height: 25,
                  width: 22,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Call Options',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600, color: WHITE, fontSize: 22),
              )
            ],
          ),
        ),
      ],
    );
  }
}
