import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.chrome_reader_mode_outlined), label: "My Courses"),
        BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline_rounded), label: "Mentors"),
      ]),
      body: Stack(children: [

        ListView(children: [
          Column(
            children: [
              Container(
                height: 170,
                width: double.infinity,
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage(
                          "asset/blue.jpeg",
                        ),
                        fit: BoxFit.cover)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 15, top: 25),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("asset/person.jpeg"),
                            radius: 25,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hi Ajay ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                "Tuesday, 23 April 2024",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 45,
                          ),
                          child: Container(
                            height: 40,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.black38,
                                borderRadius: BorderRadius.circular(30)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.vibration_outlined,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 120),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hello, I'm Breff",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 16),
                              ),
                              Text(
                                "Ask all your career & exams\ndoubts to me",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  disabledBackgroundColor: Colors.white,
                                  backgroundColor: Colors.blue[200]),
                              onPressed: () {},
                              child: const Text(
                                "ASK",
                                style: TextStyle(color: Colors.black),
                              )),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 250, bottom: 10),
                child: Text(
                  "Recently Played",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 8),
                          child: Container(
                            height: 65,
                            width: 80,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(15)),
                            child: Image.asset(
                              "asset/pause.jpeg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 15),
                          child: Column(
                            children: [
                              Text(
                                "OET Beginner special class\n and Preapare Tips",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 90),
                                child: Text("20:45/35:12"),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 350,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {},
                  child: const Text(
                    "Explore Courses",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("asset/mentor.jpeg"),
                        fit: BoxFit.cover),
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20, left: 20),
                      child: Text(
                        "Find a mentor",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Anywhere, Anytime!",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, left: 20),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue),
                          onPressed: () {},
                          child: const Text(
                            "Connect Now",
                            style: TextStyle(color: Colors.white),
                          )),
                    )
                  ],
                ),
              ),
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 270, top: 20),
                    child: Text(
                      "Mock Tests",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.grey[400]),
                              child: const Icon(Icons.chrome_reader_mode_outlined),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              "Reading",
                              style: TextStyle(fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.grey[400]),
                            child: const Icon(Icons.headphones_outlined),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Listening",
                            style: TextStyle(fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 6),
                                child: Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.grey[400]),
                                  child: const Icon(Icons.note_alt_outlined),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  "Writing",
                                  style: TextStyle(fontSize: 16),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 6),
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Colors.grey[400]),
                                    child:
                                        const Icon(Icons.spatial_tracking_outlined),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text(
                                    "Speaking",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 240, top: 15),
                    child: Text(
                      "Popular Courses",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 16),
                        child: Container(
                          height: 240,
                          width: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image:const  DecorationImage(image: AssetImage("asset/download.jpeg"),
                              fit: BoxFit.cover),
                              color: Colors.white),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15, top: 100),
                                child: Text(
                                  "OET Beginner special",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  "class and Preparation",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  "Tips",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 12),
                                    child: Icon(Icons.accessibility),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 7),
                                    child: Text("54"),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 18),
                                    child: Icon(Icons.access_time),
                                  ),
                                  Text("48 Hrs"),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10, top: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      "4000/-",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 40),
                                      child: Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                    ),
                                    Text("3.5")
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 15),
                        child: Stack(
                          children:[ 
                            
                            Container(
                              
                            height: 240,
                            width: 170,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image:const DecorationImage(image: AssetImage("asset/download.jpeg"),fit: BoxFit.cover),
                                color: Colors.white),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 15, top: 100),
                                  child: Text(
                                    "OET Beginner special",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text(
                                    "class and Preparation",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text(
                                    "Tips",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 12),
                                      child: Icon(Icons.accessibility),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 7),
                                      child: Text("54"),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 18),
                                      child: Icon(Icons.access_time),
                                    ),
                                    Text("48 Hrs"),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10, top: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        "5000/-",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 40),
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                      ),
                                      Text("4.5")
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          ]
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ]),
      ]),
    );
  }
}
