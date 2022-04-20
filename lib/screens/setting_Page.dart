import 'package:flutter/material.dart';
import 'package:platform_convert/modal_class.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  TextStyle mystyle = TextStyle(
    color: Color(0xff54759E),
    fontWeight: FontWeight.w400,
    fontSize: 20,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
        top: (isIos == true) ? 90 : 10,
      ),
      child: Column(
        children: [
          SizedBox(height: 20),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "Date",
              style: mystyle,
            ),
            Text(
              "20, April 2022",
              style: mystyle,
            ),
          ]),
          SizedBox(height: 10),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: SizedBox.expand(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(primary: Color(0xff54759E)),
                child: Text("Change Date"),
              ),
            ),
          ),
          SizedBox(height: 30),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "Time",
              style: mystyle,
            ),
            Text(
              "9:45:08 AM",
              style: mystyle,
            ),
          ]),
          SizedBox(height: 10),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: SizedBox.expand(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(primary: Color(0xff54759E)),
                child: Text("Change Time"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
