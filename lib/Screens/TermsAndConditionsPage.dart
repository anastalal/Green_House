import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TermsAndConditions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    final List<Testimonial> testimonials = [
      Testimonial('User-Friendly:',
          'Our app is designed with simplicity in mind. You dont need to be a tech expert to use it effectively.'),
      Testimonial('Data-Driven:',
          'We believe in the power of data. Our app gives you insights into your plants conditions, helping you make informed decisions.'),
      Testimonial('AI Expertise:',
          'With Chatgpt API, we offer intelligent suggestions tailored to your specific plants and conditions'),
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text('Terms & Conditions'),
          backgroundColor: Color.fromARGB(255, 154, 199, 139),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //Name and Logo
              Container(
                width: screenWidth,
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Green House',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    SizedBox(height: 8),
                    Image.asset(
                      'lib/img/logo.png',
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
              ),

              //brief summary
              Container(
                  width: screenWidth,
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "These terms and conditions outline the rules and regulations for the use of Green House's Plant Monitoring Application, located at GreenHouse" +
                        " By accessing this app, we assume you accept these terms and conditions. Do not continue to use Green House if you do not agree to take all of the terms and conditions stated on this page.",
                    style: Theme.of(context).textTheme.bodyText2,
                  )),

              //statement and values
              Container(
                  width: screenWidth,
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'License:',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Unless otherwise stated, [Green House and/or its licensors own the intellectual property rights for all material on Green House. All intellectual property rights are reserved. You may access this from Green House for your own personal use subjected to restrictions set in these terms and conditions.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      SizedBox(height: 16),
                    ],
                  )),
            ],
          ),
        ));
  }
}

class Testimonial {
  final String author;
  final String text;

  Testimonial(this.author, this.text);
}
