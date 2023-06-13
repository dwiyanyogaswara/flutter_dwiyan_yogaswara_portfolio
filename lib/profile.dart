import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 40, 20, 5),
        child: Column(children: [
          CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage(
              'assets/images/linkedin.jpg',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Dwiyan Yogaswara',
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                  fontSize: 30,
                  color: Colors.blue[800],
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Web and Mobile Developer',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
                color: Colors.blue[700]),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
              'I am a software engineer based in Jakarta, Indonesia. I specialize in web and andorid applications',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue[700],
                  letterSpacing: 1,
                ),
              )),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(
                    width: 1, style: BorderStyle.solid, color: Colors.blue),
                borderRadius: BorderRadius.circular(40)),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'assets/images/linkedin-icon.png',
                    height: 80,
                    width: 80,
                  ),
                  Image.asset(
                    'assets/images/whatsapp.png',
                    height: 80,
                    width: 80,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'assets/images/github.png',
                    height: 80,
                    width: 80,
                  ),
                  Image.asset(
                    'assets/images/CV.png',
                    height: 80,
                    width: 80,
                  )
                ],
              )
            ]),
          )
        ]),
      ),
    );
  }
}
