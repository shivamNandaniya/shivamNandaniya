import 'package:flutter/material.dart';

import '../modal_class.dart';

class CallPage extends StatefulWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: ListView.builder(
          itemCount: call.length,
          itemBuilder: (context, i) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(call[i].image),
                    ),
                    SizedBox(width: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          call[i].name,
                          style: TextStyle(
                              color:
                                  (isIos == true) ? Colors.white : Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Text(
                          call[i].massage,
                          style: TextStyle(
                              color:
                                  (isIos == true) ? Colors.white : Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Icon(
                      Icons.phone,
                      color: Colors.green,
                    ),
                  ],
                ),
                SizedBox(height: 10)
              ],
            );
          }),
    );
  }
}
