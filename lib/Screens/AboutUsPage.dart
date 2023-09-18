import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsPage extends StatelessWidget {
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
          title: Text('About Us'),
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
                    'At Green House, we are passionate about helping you take care of your plants with ease and precision. Our app is designed to empower both beginner gardeners and experienced farmers to monitor and nurture their plants more effectively.',
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
                        'What We Do:',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Our app provides real-time monitoring of your plants, allowing you to keep a close eye on crucial factors such as temperature, humidity, and soil nutrient levels. With our easy-to-use interface and advanced sensors, you can ensure that your plants are always in the best possible environment for growth.',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      SizedBox(height: 16),
                    ],
                  )),

              //History and background
              Container(
                  width: screenWidth,
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [],
                  )),

              //products or service
              Container(
                  width: screenWidth,
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [],
                  )),

              //awards
              Container(
                  width: screenWidth,
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [],
                  )),

              //Testimonials or reviews
              Container(
                width: screenWidth,
                padding: EdgeInsets.all(8),
                child: Text(
                  'Why Choose Us:',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Container(
                width: screenWidth,
                padding: EdgeInsets.all(8),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: testimonials.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              testimonials[index].author,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            SizedBox(height: 4),
                            Text(
                              testimonials[index].text,
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
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
