import 'package:flutter/material.dart';

class InfinityHome extends StatefulWidget {
  const InfinityHome({super.key});

  @override
  State<InfinityHome> createState() => _InfinityHomeState();
}

class _InfinityHomeState extends State<InfinityHome> {
  List<String> skillsImages = [
    'assets/skills/java.png',
    'assets/skills/cpp.png',
    'assets/skills/js.png',
    'assets/skills/python.png',
    'assets/skills/sql.png',
  ];
  List<String> skillsData = ['Java', 'C++', 'JS', 'Python', 'SQL'];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Color primaryColor = Colors.white;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: height * 0.25,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 48, 20, 20),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.menu_outlined,
                                color: primaryColor,
                              ),
                              Icon(
                                Icons.account_circle_outlined,
                                color: primaryColor,
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.85,
                              height:
                                  MediaQuery.of(context).size.height * 0.055,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                        ),
                                        decoration: InputDecoration(
                                          hintText:
                                              'What you are looking for...',
                                          hintStyle: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.8),
                                            fontSize: 16,
                                          ),
                                          border: InputBorder.none,
                                          suffixIcon: IconButton(
                                            icon: Icon(
                                              Icons.search_outlined,
                                              color: Colors.black,
                                            ),
                                            onPressed: () {},
                                          ),
                                        ),
                                        cursorColor: primaryColor,
                                        cursorRadius: const Radius.circular(20),
                                        cursorWidth: 3,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Recommended for you",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.22,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                            right: 8,
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: height * 0.16,
                                width: 134,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      skillsImages[index],
                                      height: 74,
                                      width: 74,
                                    )),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  skillsData[index],
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
