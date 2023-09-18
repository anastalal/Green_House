import 'package:flutter/material.dart';
import 'package:green_house/Components/action_button.dart';
import 'package:green_house/Components/side_menu.dart';
import 'package:green_house/services/auth.dart';
import 'package:green_house/services/checkInternetConnection.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AiPage extends StatefulWidget {
  @override
  _AiPage createState() => _AiPage();
}

class _AiPage extends State<AiPage> {
  TextEditingController temperatureController = TextEditingController();
  TextEditingController moistureController = TextEditingController();
  TextEditingController nitrogenController = TextEditingController();
  TextEditingController phosphorusController = TextEditingController();
  TextEditingController potassiumController = TextEditingController();
  String temperature = "40°";
  String moisture = "35°";
  String nitrogen = "67%";
  String phosphorus = "60%";
  String potassium = "70%";
  final AuthService _auth = new AuthService();

  String advice = '';

  Future<void> getAdvice() async {
    setState(() => advice = 'Loading...');
    final Map<String, dynamic> requestData = {
      "prompt": "Given the following data:\n"
          "Temperature: $temperature\n"
          "Moisture: $moisture\n"
          "Nitrogen: $nitrogen\n"
          "Phosphorus: $phosphorus\n"
          "Potassium: $potassium\n"
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
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.grey, size: 28),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.refresh_rounded,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.grey,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5, right: 16, bottom: 5),
            child: const CircleAvatar(
              backgroundImage: AssetImage("lib/img/man.png"),
              backgroundColor: Colors.blue,
            ),
          )
        ],
      ),
      drawer: const SideMenu(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 6.0,
                  runSpacing: 6.0,
                  children: <Widget>[
                    _buildChip('Temperature',
                        Color.fromARGB(255, 154, 157, 219), temperature),
                    _buildChip('Moisture', Color.fromARGB(255, 154, 157, 219),
                        moisture),
                    _buildChip('Nitrogen', Color.fromARGB(255, 154, 157, 219),
                        nitrogen),
                    _buildChip('Phosphorus', Color.fromARGB(255, 154, 157, 219),
                        phosphorus),
                    _buildChip('Potassium', Color.fromARGB(255, 154, 157, 219),
                        potassium),
                  ],
                ),
                SizedBox(
                  height: 30.0,
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

Widget _buildChip(String label, Color color, String num) {
  return Chip(
    labelPadding: EdgeInsets.all(9.0),
    avatar: CircleAvatar(
      backgroundColor: Colors.white70,
      child: Text(num),
    ),
    label: Text(
      label,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
    backgroundColor: color,
    elevation: 6.0,
    shadowColor: Colors.grey[60],
    padding: EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0, left: 6.0),
  );
}
