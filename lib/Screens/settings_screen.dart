import 'package:flutter/material.dart';
import 'package:green_house/Components/textField2.dart';
import 'package:green_house/Components/textfield.dart';

import 'package:green_house/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';
import 'package:green_house/services/checkInternetConnection.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController temperatureController = TextEditingController();
    TextEditingController humidityController = TextEditingController();
    TextEditingController waterTankController = TextEditingController();
    TextEditingController apiKeyController = TextEditingController();
    TextEditingController moistureController = TextEditingController();
    TextEditingController nitrogenController = TextEditingController();
    TextEditingController phosphorusController = TextEditingController();
    TextEditingController potassiumController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 60, left: 20, right: 20),
          child: Column(
            children: [
              Center(
                child: Text(
                  'Settings',
                  style: TextStyle(
                    color: Color(0xFF096637),
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Container(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 25,
                    child: const Text(
                      'API Key',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              GHTextField2(
                controller: apiKeyController,
                hintText: "Api Key",
                obscureText: false,
                validator: (value) {},
              ),
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Container(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 25,
                    child: const Text(
                      'Fields',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              GHTextField2(
                controller: humidityController,
                hintText: "Humidity",
                obscureText: false,
                validator: (value) {},
              ),
              SizedBox(
                height: 20,
              ),
              GHTextField2(
                controller: temperatureController,
                hintText: "Temperature",
                obscureText: false,
                validator: (value) {},
              ),
              SizedBox(
                height: 20,
              ),
              GHTextField2(
                controller: waterTankController,
                hintText: "Water tank",
                obscureText: false,
                validator: (value) {},
              ),
              SizedBox(
                height: 20,
              ),
              GHTextField2(
                controller: moistureController,
                hintText: "Soil Moisture",
                obscureText: false,
                validator: (value) {},
              ),
              SizedBox(
                height: 20,
              ),
              GHTextField2(
                controller: nitrogenController,
                hintText: "Nitrogen",
                obscureText: false,
                validator: (value) {},
              ),
              SizedBox(
                height: 20,
              ),
              GHTextField2(
                controller: phosphorusController,
                hintText: "Phosphorus",
                obscureText: false,
                validator: (value) {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
