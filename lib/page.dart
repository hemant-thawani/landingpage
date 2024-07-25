import 'package:flutter/material.dart';
import "package:myapp/network.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final List<Map> articles = [
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "random person",
    "time": "4 min read",
  },
  {
    "title": "Does Dry is January Actually Improve Your Health?",
    "author": "random person ",
    "time": "4 min read",
  },
  {
    "title": "You do hire a designer to make something. You hire them.",
    "author": "random person",
    "time": "4 min read",
  },
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "random person",
    "time": "4 min read",
  },
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "random person",
    "time": "4 min read",
  },
  {
    "title": "Does Dry is January Actually Improve Your Health?",
    "author": "random person",
    "time": "4 min read",
  },
  {
    "title": "You do hire a designer to make something. You hire them.",
    "author": "random person",
    "time": "4 min read",
  },
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "random person",
    "time": "4 min read",
  },
];

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  static const String path = "lib/page.dart";
  final Color primaryColor = const Color(0xff007BFF);
  final Color bgColor = const Color(0xffF5F5F5);
  final Color secondaryColor = const Color(0xff6C757D);
  final Color accentColor = const Color(0xff28A745);
  final Color textColorPrimary = const Color(0xff212529);
  final Color textColorSecondary = const Color(0xff6C757D);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 5,
        child: Theme(
            data: ThemeData(
              primaryColor: primaryColor,
              appBarTheme: AppBarTheme(
                color: Colors.white,
                iconTheme: IconThemeData(color: secondaryColor),
                actionsIconTheme: IconThemeData(
                  color: secondaryColor,
                ),
                toolbarTextStyle: TextTheme(
                  titleLarge: TextStyle(
                    color: textColorPrimary,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ).bodyMedium,
                titleTextStyle: TextTheme(
                  titleLarge: TextStyle(
                    color: textColorPrimary,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ).titleLarge,
              ),
            ),
            child: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: const Text('DzignHood'),
                leading: const Icon(Icons.category),
                actions: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  )
                ],
                bottom: TabBar(
                  isScrollable: true,
                  labelColor: primaryColor,
                  indicatorColor: primaryColor,
                  unselectedLabelColor: secondaryColor,
                  tabs: const <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Articles"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Design inspiration"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("courses"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Resources"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Social media"),
                    ),
                  ],
                ),
              ),
              body: TabBarView(
                children: <Widget>[
                  ListView.separated(
                    padding: const EdgeInsets.all(16.0),
                    itemCount: articles.length,
                    itemBuilder: (context, index) {
                      return _buildArticleItem(index);
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 16.0),
                  ),
                  const Text("we can post design inspiration here"),
                  const Text("we can sell our courses here or promote our sponsors"),
                  const Text("we can resource library here"),
                  const Text("we will give all the links of our social media handles here"),
                ],
              ),
             
            )));
  }

  Widget _buildArticleItem(int index) {
    Map article = articles[index];

    return Container(
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Container(
            width: 90,
            height: 90,
            color: bgColor,
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Container(
                  height: 100,
                  color: primaryColor,
                  width: 80.0,
                ),
                const SizedBox(width: 20.0),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        article["title"],
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: textColorPrimary,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            WidgetSpan(
                              child: CircleAvatar(
                                radius: 15.0,
                                backgroundColor: accentColor,
                              ),
                            ),
                            const WidgetSpan(
                              child: SizedBox(width: 5.0),
                            ),
                            TextSpan(
                                text: article["author"],
                                style: const TextStyle(fontSize: 16.0)),
                            const WidgetSpan(
                              child: SizedBox(width: 20.0),
                            ),
                            const WidgetSpan(
                              child: SizedBox(width: 5.0),
                            ),
                            TextSpan(
                              text: article["time"],
                            ),
                          ],
                        ),
                        style: const TextStyle(height: 2.0),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
