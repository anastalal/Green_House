import 'package:flutter/material.dart';
import 'package:green_house/Components/action_button.dart';
import 'package:green_house/services/auth.dart';
import 'package:green_house/services/checkInternetConnection.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home2 extends StatefulWidget {
  @override
  _Home2 createState() => _Home2();
}

class _Home2 extends State<Home2> {
  TextEditingController temperatureController = TextEditingController();
  TextEditingController moistureController = TextEditingController();
  TextEditingController nitrogenController = TextEditingController();
  TextEditingController phosphorusController = TextEditingController();
  TextEditingController potassiumController = TextEditingController();
  final AuthService _auth = new AuthService();

  String advice = '';

  Future<void> getAdvice() async {
    setState(() => advice = 'Loading...');
    final Map<String, dynamic> requestData = {
      "prompt": "Given the following data:\n"
          "Temperature: ${temperatureController.text}\n"
          "Moisture: ${moistureController.text}\n"
          "Nitrogen: ${nitrogenController.text}\n"
          "Phosphorus: ${phosphorusController.text}\n"
          "Potassium: ${potassiumController.text}\n"
          "Provide advice for optimal farming practices.",
      "max_tokens": 250,
      "model": "text-davinci-003",
      "temperature": 0,
      "top_p": 1,
      // Adjust the number of tokens as needed
      // Other options or parameters you might need
    };

    final response = await http.post(
      Uri.parse('https://api.openai.com/v1/completions'),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer Your Open AI Kek", // Replace with your API key
      },
      body: jsonEncode(requestData),
    );

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      setState(() {
        advice = jsonResponse['choices'][0]['text'];
      });
    } else {
      print(response.body);
      throw Exception('Failed to load advice');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Green House'),
        leading: Icon(
          Icons.menu,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () async {
                await checkInternetConnection(context);
                await _auth.signOut();
              },
              child: Center(
                child: Text("logout"),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Enter Farm Data:'),
                TextFormField(
                  controller: temperatureController,
                  decoration: InputDecoration(labelText: 'Temperature'),
                ),
                TextFormField(
                  controller: moistureController,
                  decoration: InputDecoration(labelText: 'Moisture'),
                ),
                TextFormField(
                  controller: nitrogenController,
                  decoration: InputDecoration(labelText: 'Nitrogen'),
                ),
                TextFormField(
                  controller: phosphorusController,
                  decoration: InputDecoration(labelText: 'Phosphorus'),
                ),
                TextFormField(
                  controller: potassiumController,
                  decoration: InputDecoration(labelText: 'Potassium'),
                ),
                ElevatedButton(
                  onPressed: () async {
                    await getAdvice();
                    // await completionFun();
                  },
                  child: Text('Get Suggestions'),
                ),
                SizedBox(height: 20),
                Text('AI Suggestions:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
                // SizedBox(height: 10),
                Text(advice,
                    style: TextStyle(
                      fontSize: 18,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
