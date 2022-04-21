import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_convert/modal_class.dart';
import 'package:intl/intl.dart';

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
  DateTime currentdate = DateTime.now();
  DateTime? pickedDate;
  String? date;

  TimeOfDay currenttime = TimeOfDay.now();
  TimeOfDay? pickedtime;
  String? time;

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
              "$date",
              style: mystyle,
            ),
          ]),
          SizedBox(height: 10),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: SizedBox.expand(
              child: ElevatedButton(
                onPressed: () async {
                  (isIos == false)
                      ? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: currentdate,
                          firstDate: DateTime(1990),
                          lastDate: DateTime(2024))
                      : await showCupertinoModalPopup(
                          context: context,
                          builder: (context) {
                            return Container(
                              height: 250,
                              color: Colors.white,
                              child: CupertinoDatePicker(
                                mode: CupertinoDatePickerMode.date,
                                initialDateTime: currentdate,
                                onDateTimeChanged: (DateTime val) {
                                  currentdate = val;
                                },
                              ),
                            );
                          });

                  setState(() {
                    (isIos)
                        ? date =
                            DateFormat("d, MMMM y").format(currentdate) //ios
                        : date = DateFormat("d, MMMM y")
                            .format(pickedDate!); // andriod
                  });
                },
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
              "$time",
              style: mystyle,
            ),
          ]),
          SizedBox(height: 10),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: SizedBox.expand(
              child: ElevatedButton(
                onPressed: () async {
                  // pickedtime = await showTimePicker(
                  //   context: context,
                  //   initialTime: currenttime,
                  // );

                  await showCupertinoModalPopup(
                      context: context,
                      builder: (context) {
                        return Container(
                          height: 250,
                          color: Colors.white,
                          child: CupertinoDatePicker(
                            mode: CupertinoDatePickerMode.time,
                            initialDateTime: currentdate,
                            onDateTimeChanged: (DateTime val) {
                              currentdate = val;
                            },
                          ),
                        );
                      });

                  setState(() {
                    // time = "${(pickedtime!.periodOffset == 12) ? (pickedtime!.hour == 12) ? pickedtime!.hour : pickedtime!.hour - 12 : (pickedtime!.hour == 0) ? 12 : pickedtime!.hour}:${pickedtime!.minute}:${DateTime.now().second} ${pickedtime!.period.name}";time =
                    time =
                        "${(currentdate.hour > 12) ? (currentdate.hour == 0) ? currentdate.hour : currentdate.hour - 12 : (currentdate.hour == 0) ? 12 : currentdate.hour} ${currentdate!.minute}:${DateTime.now().second} ${(currentdate.hour == 0) ? "AM" : "PM"}";
                  });
                },
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
