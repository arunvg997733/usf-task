import 'package:flutter/material.dart';
import 'package:usftask/core/constant.dart';
import 'package:usftask/presentation/widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                kBlue,
                kLateBlue,
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(
                          backgroundColor: kWhite,
                          child: Icon(Icons.circle_outlined),
                        ),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                              color: kWhite,
                              borderRadius: BorderRadius.circular(30)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text('Login',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: kBlack)),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.arrow_forward)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const TabBar(tabs: [
                      Column(
                        children: [
                          Icon(Icons.person,
                              color: Color.fromARGB(255, 8, 36, 59)),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Training',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 8, 36, 59))),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.auto_graph_rounded,
                              color: Color.fromARGB(255, 8, 36, 59)),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Inspection',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 8, 36, 59))),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.settings,
                              color: Color.fromARGB(255, 8, 36, 59)),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Calibration',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 8, 36, 59))),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ]),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text('Explore our',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 8, 36, 59))),
                    const Text('various training',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 8, 36, 59))),
                    const SizedBox(
                      height: 40,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Featured Training',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 8, 36, 59))),
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: kWhite,
                          child: Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                        height: 300,
                        child: PageView(
                          controller: PageController(viewportFraction: 0.8),
                          children: const [
                            PageViewContainer(),
                            PageViewContainer()
                          ],
                        ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: kBlack,
          selectedIconTheme: const IconThemeData(color: kBlue),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.messenger_outline_rounded), label: "Contact"),
            BottomNavigationBarItem(
                icon: Icon(Icons.question_mark), label: "About"),
          ]),
    );
  }
}
