import 'package:flutter/material.dart';
import 'package:ngopikuy/model/cafe_place.dart';
import 'package:ngopikuy/screen/DetailScreen.dart';

class MainScreen extends StatelessWidget {
  final String title;
  final List<CafePlace> cafePlaceList;
  MainScreen({Key? key, required this.title, required this.cafePlaceList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<CafePlace> recommendedCafes = [
      ...cafePlaceList
    ]; // Copy the original list
    recommendedCafes
        .sort((a, b) => b.rate.compareTo(a.rate)); // Sort by highest rating

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.search),
          Icon(Icons.more_vert),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Recommended Cafe",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recommendedCafes.length,
              itemBuilder: (context, index) {
                final CafePlace place = recommendedCafes[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DetailScreen(place: place);
                          },
                        ),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Container(
                        width: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(place.imageAsset),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            place.name,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Tiltneon',
                              backgroundColor: Colors.black.withOpacity(0.5),
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: cafePlaceList.length,
            itemBuilder: (context, index) {
              final CafePlace place = cafePlaceList[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return DetailScreen(place: place);
                      },
                    ),
                  );
                },
                child: Card(
                  color: Colors.teal[900],
                  elevation: 10,
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            place.imageAsset,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
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
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.access_time,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      place.openTime,
                                      style: const TextStyle(
                                        fontFamily: 'Tiltneon',
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
          ),
        ],
      ),
    );
  }
}
