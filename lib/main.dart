import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_convert/screens/callsPage.dart';
import 'package:platform_convert/screens/chat_page.dart';
import 'package:platform_convert/screens/setting_Page.dart';

import 'modal_class.dart';

void main() {
  runApp(const MyApp());
}

int _currentindex = 0;

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return (isIos == false)
        ? MaterialApp(
            debugShowCheckedModeBanner: false,
            home: DefaultTabController(
              length: 3,
              child: Scaffold(
                drawer: Container(
                  height: double.infinity,
                  width: 250,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        color: Color(0xff54759e),
                        height: 170,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12, bottom: 7),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(radius: 40),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "Shivam Nandaniya",
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "7990350174",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: drawericon.entries
                            .map((e) => Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 20, bottom: 10),
                                  child: Row(
                                    children: [
                                      e.key,
                                      SizedBox(width: 30),
                                      Text(e.value)
                                    ],
                                  ),
                                ))
                            .toList(),
                      )
                    ],
                  ),
                ),
                appBar: AppBar(
                  backgroundColor: const Color(0xff54759E),
                  title: const Text("PlatForm Convertor"),
                  actions: [
                    Switch(
                        value: isIos,
                        onChanged: (val) {
                          isIos = val;
                          setState(() {});
                        })
                  ],
                  bottom: const TabBar(
                    tabs: [
                      Tab(
                        child: Text("Chats"),
                      ),
                      Tab(
                        child: Text("Calls"),
                      ),
                      Tab(
                        child: Text("Settings"),
                      ),
                    ],
                  ),
                ),
                body: TabBarView(
                  children: [
                    ChatPage(),
                    CallPage(),
                    SettingPage(),
                  ],
                ),
              ),
            ),
          )
        : CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                leading: Builder(builder: (context) {
                  return GestureDetector(
                    onTap: () {
                      showCupertinoDialog(
                          context: context,
                          builder: (context) => Row(
                                children: [
                                  Expanded(
                                      flex: 5,
                                      child: Container(
                                        height: double.infinity,
                                        width: 250,
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            Container(
                                              color: Color(0xff54759e),
                                              height: 170,
                                              width: double.infinity,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 12, bottom: 7),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    CircleAvatar(radius: 40),
                                                    SizedBox(
                                                      height: 6,
                                                    ),
                                                    Text(
                                                      "Shivam Nandaniya",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    SizedBox(
                                                      height: 6,
                                                    ),
                                                    Text(
                                                      "7990350174",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Column(
                                              children: drawericon.entries
                                                  .map((e) => Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                top: 10,
                                                                left: 20,
                                                                bottom: 10),
                                                        child: Row(
                                                          children: [
                                                            e.key,
                                                            SizedBox(width: 30),
                                                            Text(e.value)
                                                          ],
                                                        ),
                                                      ))
                                                  .toList(),
                                            )
                                          ],
                                        ),
                                      )),
                                  Expanded(
                                      flex: 2,
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          color: Colors.black.withOpacity(0.3),
                                        ),
                                      )),
                                ],
                              ));
                    },
                    child: Icon(Icons.menu),
                  );
                }),
                middle: Text("Platform Converter"),
                trailing: CupertinoSwitch(
                  onChanged: (val) {
                    setState(() {
                      isIos = val;
                    });
                  },
                  value: isIos,
                ),
              ),
              child: Stack(
                children: [
                  IndexedStack(
                    index: _currentindex,
                    children: [
                      ChatPage(),
                      CallPage(),
                      SettingPage(),
                    ],
                  ),
                  Column(
                    children: [
                      Spacer(),
                      CupertinoTabBar(
                          onTap: (val) {
                            _currentindex = val;
                            setState(() {});
                          },
                          currentIndex: _currentindex,
                          items: const <BottomNavigationBarItem>[
                            BottomNavigationBarItem(
                                icon: Icon(CupertinoIcons.chat_bubble_2),
                                label: "CHATS"),
                            BottomNavigationBarItem(
                                icon: Icon(CupertinoIcons.phone),
                                label: "PHONE"),
                            BottomNavigationBarItem(
                                icon: Icon(CupertinoIcons.settings),
                                label: "SETTINGS"),
                          ])
                    ],
                  )
                ],
              ),
            ),
          );
  }
}
