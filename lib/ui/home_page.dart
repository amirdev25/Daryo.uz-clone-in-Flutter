import 'dart:ui';

import 'package:daryo_clone/models/news_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daryo"),
      ),
      drawer: myDrawer(),
      body: HomeBody(),
    );
  }

  myDrawer() {
    return Drawer(
      child: Container(
        padding: EdgeInsets.zero,
        child: Column(
          children: [
            SizedBox(
              height: 200.0,
              child: DrawerHeader(
                decoration: const BoxDecoration(color: Colors.blue),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: const EdgeInsets.all(4.0),
                            child: const Text(
                              "Daryo",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            width: double.infinity,
                            height: 24.0,
                            margin: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              border:
                                  Border.all(color: Colors.white, width: 1.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(16.0),
                                        topLeft: Radius.circular(16.0),
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.all(2),
                                    child: const Text(
                                      "LOTINCHA",
                                      style: TextStyle(fontSize: 12.0),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(16.0),
                                        topRight: Radius.circular(16.0),
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.all(2),
                                    child: const Text(
                                      "KRILCHA",
                                      style: TextStyle(fontSize: 12.0),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: const EdgeInsets.all(4.0),
                              child: const Text(
                                "Toshkent",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.wb_cloudy_outlined,
                                  color: Colors.white,
                                  size: 18,
                                ),
                                SizedBox(
                                  width: 4.0,
                                ),
                                Text(
                                  "+12.0°",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        const Divider(
                          height: 2.0,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.monetization_on_outlined,
                                  color: Colors.white,
                                  size: 18.0,
                                ),
                                Text(
                                  "11095.31",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12.0),
                                )
                              ],
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.euro,
                                  color: Colors.white,
                                  size: 18.0,
                                ),
                                Text(
                                  "10772.44",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12.0),
                                )
                              ],
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.currency_ruble_outlined,
                                  color: Colors.white,
                                  size: 18.0,
                                ),
                                Text(
                                  "173.84",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12.0),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 40.0,
              width: double.infinity,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 16.0),
              color: const Color(0xEEFBF8D0),
              child: const Text(
                "Qo'llanma ekranini ko'rsatish",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 40.0,
              width: double.infinity,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 16.0),
              color: const Color(0xEEB8CAFF),
              child: const Text(
                "So'ngi yangiliklar",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
            ),
            getMyText("Mahalliy"),
            getMyText("Dunyo"),
            getMyText("Texnologiyalar"),
            const Divider(
              height: 2.0,
              color: Colors.grey,
            ),
            Container(
              height: 40.0,
              width: double.infinity,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 16.0),
              child: const Text(
                "So'ngi yangiliklar",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),
            const Divider(
              height: 2.0,
              color: Colors.grey,
            ),
            getMyText("Madaniyat"),
            getMyText("Avto"),
            getMyText("Sport"),
            getMyText("Foto"),
            getMyText("Lifestyle"),
            getMyText("Kolumnistlar"),
            getMyText("Afisha"),
          ],
        ),
      ),
    );
  }

  getMyText(String txt) {
    return Container(
      height: 40.0,
      width: double.infinity,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 16.0),
      child: Text(
        txt,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  HomeBody({Key? key}) : super(key: key);
  List<NewsModel> newsList = [];

  @override
  Widget build(BuildContext context) {
    loadData();

    return Column(
      children: [
        const DefaultTabController(
          length: 11,
          child: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                child: Text(
                  "So'ngi yangiliklar",
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Asosiy yangiliklar",
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Eng ko'p o'qilganlar",
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Kolumnistlar",
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Multimedia",
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Mahalliy",
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Dunyo",
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Madaniyat",
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Lifestyle",
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Sport",
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Pul",
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ],
          ),
        ),
        const Divider(
          height: 2.0,
          color: Colors.grey,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: newsList.length,
            itemBuilder: (context, index) {
              return listItemView(newsList[index], context);
            },
          ),
        )
      ],
    );
  }

  Widget listItemView(NewsModel news, BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 120.0,
              child: Text(
                "testtesttesttesttesttesttest",
                style: TextStyle(color: Colors.blueAccent),
              ),
            ),
            Row(
              children: const [
                Text("17:30 | 08 dekabr 2021 |"),
                Icon(
                  Icons.remove_red_eye,
                  color: Colors.blueAccent,
                  size: 10.0,
                ),
                Text(
                  "12219",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.blueAccent,
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }

  void loadData() {
    newsList.add(NewsModel());
    newsList.add(NewsModel());
    newsList.add(NewsModel());
    newsList.add(NewsModel());
    newsList.add(NewsModel());
    newsList.add(NewsModel());
    newsList.add(NewsModel());
    newsList.add(NewsModel());
    newsList.add(NewsModel());
    newsList.add(NewsModel());
    newsList.add(NewsModel());
  }
}
