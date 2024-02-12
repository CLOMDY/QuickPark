import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinity/routes/skills/skils_page.dart';
import 'package:infinity/util/data.dart';

List<String> skillsImages = [
  'assets/skills/java.png',
  'assets/skills/cpp.png',
  'assets/skills/js.png',
  'assets/skills/python.png',
  'assets/skills/sql.png',
];

List<String> skillsData = ['Java', 'C++', 'JS', 'Python', 'SQL'];

class InfinityHome extends StatefulWidget {
  const InfinityHome({super.key});

  @override
  State<InfinityHome> createState() => _InfinityHomeState();
}

class _InfinityHomeState extends State<InfinityHome> {
  int index = 0;

  // void navigation() {
  //   if (index == 0) {
  //     print('Java');
  //   } else if (index == 1) {
  //     print('CPP');
  //   } else if (index == 2) {
  //     print('JS');
  //   } else if (index == 3) {
  //     print('Python');
  //   } else if (index == 4) {
  //     print('SQL');
  //   }
  // }

  Future<ProgrammingLanguage> getProgrammingLanguageData() async {
    // Retrieve the document snapshot for the Java programming language
    DocumentSnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore
        .instance
        .collection('programmingLanguages')
        .doc('java')
        .get();

    // Convert the Firestore snapshot to a ProgrammingLanguage object
    return ProgrammingLanguage.fromJson(snapshot.data()!);
  }

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
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: SizedBox(
                    height: height * 0.17,
                    child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                              left: 6,
                              right: 6,
                            ),
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    // Navigate to ProgrammingLanguageScreen with data from Firestore
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            FutureBuilder<ProgrammingLanguage>(
                                          future: getProgrammingLanguageData(),
                                          builder: (context, snapshot) {
                                            if (snapshot.connectionState ==
                                                ConnectionState.waiting) {
                                              return CircularProgressIndicator(); // Show loading indicator while data is being fetched
                                            } else if (snapshot.hasError) {
                                              return Text(
                                                  'Error: ${snapshot.error}');
                                            } else {
                                              return ProgrammingLanguageScreen(
                                                programmingLanguage:
                                                    snapshot.data!,
                                              );
                                            }
                                          },
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: height * 0.14,
                                    width: 110,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: Image.asset(
                                          skillsImages[index],
                                          height: 64,
                                          width: 64,
                                        )),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    skillsData[index],
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Role based Courses",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: SizedBox(
                    height: height * 0.25,
                    child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: skillsData.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                              left: 6,
                              right: 6,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                _buildRollBasedCourses(index),
                                _buildRollBasedCourses(index),
                              ],
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRollBasedCourses(int index) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.1,
      width: 310,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 2,
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: height * 0.1,
                width: 74,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border(),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                ),
                child: Image.asset(
                  skillsImages[index],
                  height: 50,
                  width: 50,
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  skillsData[index],
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '25 Lectures | 12 Hours',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
