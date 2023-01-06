import 'package:flutter/material.dart';
import 'color_slider_component.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  double redValue = 0.5;
  double greenValue = 0.6;
  double blueValue = 0.7;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Color Sliders"),
        ),
        body: Column(
          children: [
            ColorSlider(
                title: "Red",
                value: redValue,
                color: Colors.red,
                onChange: (newValue) {
                  setState(() {
                    redValue = newValue;
                  });
                }),
            ColorSlider(
                title: "Green",
                value: greenValue,
                color: Colors.green,
                onChange: (newValue) {
                  setState(() {
                    greenValue = newValue;
                  });
                }),
            ColorSlider(
              title: "Blue",
              value: blueValue,
              color: Colors.blue,
              onChange: (newValue) {
                setState(() {
                  blueValue = newValue;
                });
              },
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(20.0),
                color: Color.fromRGBO((redValue * 255).round(),
                    (greenValue * 255).round(), (blueValue.round() * 255), 1.0),
              ),
            )
          ],
        ));
  }
}
