import 'package:flutter/material.dart';
import 'package:ngopikuy/model/cafe_place.dart';
import 'package:ngopikuy/screen/DetailScreen.dart';
import 'package:ngopikuy/widget/main/ExpandedWidget.dart';

class MainScreen extends StatelessWidget {
  final String title;
  const MainScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.search),
          Icon(Icons.more_vert),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final CafePlace place = cafePlaceList[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const DetailScreen();
                }),
              );
            },
            child: Card(
              color: Colors.teal[900],

              // make left border too
              elevation: 10,
              // make margin right and left
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      place.imageAsset,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            place.name,
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Tiltneon',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            place.location,
                            style: const TextStyle(
                              fontFamily: 'Tiltneon',
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Text(
                                  place.rate,
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: cafePlaceList.length,
      ),
    );
  }
}
