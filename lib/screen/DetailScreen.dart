import 'package:flutter/material.dart';
import 'package:ngopikuy/model/cafe_place.dart';

class DetailScreen extends StatelessWidget {
  final CafePlace place;
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Image.asset(
              place.imageAsset,
              width: MediaQuery.of(context).size.width,
              height: 300,
              fit: BoxFit.fitWidth,
            ),
            SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 300),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Text(
                        'Letton Cafe',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Tiltneon',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      FavoriteButton(),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    place.location,
                    style: const TextStyle(
                      fontFamily: 'Tiltneon',
                      color: Colors.black,
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
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    place.openDays,
                    style: const TextStyle(
                      fontFamily: 'Tiltneon',
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    place.openTime,
                    style: const TextStyle(
                      fontFamily: 'Tiltneon',
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Photos',
                    style: TextStyle(
                      fontFamily: 'Tiltneon',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: place.imageUrls.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.all(4),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              place.imageUrls[index],
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });

        // Menampilkan pesan ketika tombol favorit ditekan
        final snackBar = SnackBar(
          content: Text(
            isFavorite
                ? 'Anda telah menambahkan sebagai favorit'
                : 'Anda telah menghapus dari favorit.',
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
    );
  }
}
