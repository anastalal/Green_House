import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsPage extends StatelessWidget {
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
          title: Text('Contact Us'),
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
              Container(
                  width: screenWidth,
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Contact Us:',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      SizedBox(height: 8),
                      const ListTile(
                        leading: Icon(Icons.location_on),
                        title: Text('Saudi Arabia - Jaddah'),
                        subtitle: Text('Main-street, jd 12345'),
                      ),
                      const ListTile(
                        leading: Icon(Icons.phone),
                        title: Text('(+966)  55 832 3821'),
                      ),
                      const ListTile(
                        leading: Icon(Icons.phone),
                        title: Text('(+966)   55 078 1146'),
                      ),
                      const ListTile(
                        leading: Icon(Icons.email),
                        title: Text('housergreen@gmail.com'),
                      ),
                    ],
                  )),

              //social media
              Container(
                  width: screenWidth,
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Follow Us:',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      SizedBox(height: 8),
                      ListTile(
                        leading: Icon(Icons.link),
                        title: Text('Facebook'),
                        onTap: () => launchUrl(
                            Uri.parse('https://www.facebook.com/yourpage')),
                      ),
                      ListTile(
                        leading: Icon(Icons.link),
                        title: Text('Twitter'),
                        onTap: () => launchUrl(
                            Uri.parse('https://www.twitter.com/yourpage')),
                      ),
                      ListTile(
                        leading: Icon(Icons.link),
                        title: Text('Instagram'),
                        onTap: () => launchUrl(
                            Uri.parse('https://www.instagram.com/yourpage')),
                      ),
                    ],
                  )),
              //brief summary

              //statement and values

              //History and background

              //products or service

              //awards

              //Testimonials or reviews

              //contact information

              //social media
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
