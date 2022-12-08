import 'package:basic_ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slider_button/slider_button.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'allcategories.dart';
import 'headerWthSearch.dart';
import 'title_with_button.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool? _checked = true;
  bool? _nChecked = false;

  double _value = 4.0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearch(size: size),
          TitleWithBTN(title: "Categories", press: () {}),
          Recomends(),
          Slider(
            value: _value,
            onChanged: (newValue) => setState(() => _value = newValue),
            divisions: 100,
            label: _value.round().toString(),
            min: 0.0,
            max: 100.0,
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: Text("Check me!"),
            value: _checked,
            onChanged: (bool? value) {
              setState(
                () {
                  _checked = value;
                },
              );
            },
          ),
          Center(
              child: SliderButton(
            action: () => Fluttertoast.showToast(
              msg: 'Slider',
              fontSize: 20,
            ),
            label: const Text(
              "Slide me!",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 20),
            ),
            icon: const Text(
              "x",
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w400,
                fontSize: 35,
              ),
            ),
          )),
        ],
      ),
    );
  }
}
