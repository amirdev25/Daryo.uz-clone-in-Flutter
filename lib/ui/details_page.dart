import 'package:daryo_clone/models/news_model.dart';
import 'package:daryo_clone/utils/Constants.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, NewsModel>;
    NewsModel? news = args[Constants.NEWS];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daryo"),
      ),
      body: DetailsBody(news!),
    );
  }
}

class DetailsBody extends StatelessWidget {
  NewsModel news;

  DetailsBody(this.news, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1.0,
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(16.0),
                  height: 16.0,
                  width: 4.0,
                  color: Colors.blue,
                ),
                Text(news.type!),
              ],
            ),
            const Divider(
              height: 2.0,
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0, bottom: 8.0, left: 16.0),
              child: Row(
                children: [
                  Text(
                    "${news.time} | ${news.date}",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.0,
                    ),
                  ),
                  Row(children: [
                    Icon(Icons.remove_red_eye)
                  ],)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
