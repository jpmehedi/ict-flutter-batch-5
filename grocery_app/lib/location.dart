import 'package:flutter/material.dart';

class DropDownUse extends StatefulWidget {
  const DropDownUse({Key? key}) : super(key: key);

  @override
  _DropDownUseState createState() => _DropDownUseState();
}

class _DropDownUseState extends State<DropDownUse> {
  static const menuItems = <String>[
    'Bonossre',
    'Mohammadpur',
    'Dhanmondi',
    'Mirpur',
    'Mohakhali',
    'Uttara',
    'Polton',
    'Gulistan',
  ];
  final List<DropdownMenuItem<String>> _dropDownMenuItems = menuItems
      .map(
        (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList();

  String _btn1SelectedVal = 'One';
  String? _btn2SelectedVal;
  late String _btn3SelectedVal;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      body: Container(
        width: size.width * 1.00,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
                width: 100,
              ),
              Image.asset(
                "assets/google.png",
                //width: size.width * 0.9,
                fit: BoxFit.fill,
              ),
              const Text(
                "Select Your Location",
                style: TextStyle(
                  fontSize: 40.0,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Switch on your location to stay in tune with what's happening in your area",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              const Text(
                "Your Zone",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Container(
                width: size.width * 0.9,
                child: DropdownButton(
                  value: _btn2SelectedVal,
                  hint: const Padding(
                    padding: EdgeInsets.only(right: 145),
                    child: Text(
                      "Bonossri",
                      style: TextStyle(
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      setState(() => _btn2SelectedVal = newValue);
                    }
                  },
                  items: _dropDownMenuItems,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Your Area",
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Container(
                width: size.width * 0.9,
                child: DropdownButton(
                  value: _btn2SelectedVal,
                  hint: const Padding(
                    padding: EdgeInsets.only(right: 100),
                    child: Text(
                      "Type Your Area",
                      style: TextStyle(
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      setState(() => _btn2SelectedVal = newValue);
                    }
                  },
                  items: _dropDownMenuItems,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 50),
                width: size.width * 0.9,
                height: 100.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30)),
                child: const Text(
                  "Submit",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
