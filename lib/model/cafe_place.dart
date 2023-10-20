class CafePlace {
  String name;
  String location;
  String openDays;
  String rate;
  String openTime;
  String imageAsset;
  List<String> imageUrls;

  CafePlace({
    required this.name,
    required this.location,
    required this.openDays,
    required this.rate,
    required this.openTime,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var cafePlaceList = [
  CafePlace(
    name: 'Letton Cafe',
    location:
        'Jl. DI Panjaitan No.39, Kp. Baru, Kec. Senapelan, Kota Pekanbaru, Riau 28154',
    openDays: 'Open Everyday',
    rate: '4,6',
    openTime: '09:00 - 22:00',
    imageAsset: 'images/leton.jpg',
    imageUrls: [
      'https://bertuahpos.com/wp-content/uploads/2021/12/WhatsApp-Image-2021-12-24-at-18.28.54.jpeg',
      'https://10619-2.s.cdn12.com/rests/original/101_505749103.jpg',
      'https://10619-2.s.cdn12.com/rests/original/101_509561341.jpg',
      'https://10619-2.s.cdn12.com/rests/original/101_504599916.jpg',
      'https://lh5.googleusercontent.com/p/AF1QipMXVWTkZPKu-9hheyRMf1WAq4WndLaJihsTI7gI=w500-h500-k-no'
    ],
  ),
  CafePlace(
    name: 'RCRD Coffee',
    location:
        'Jl. Cemara No.9, Suka Maju, Kec. Sail, Kota Pekanbaru, Riau 28127',
    openDays: 'Open Everyday',
    rate: '4.2',
    openTime: '11:00 - 23:00',
    imageAsset: 'images/rcrd.jpeg',
    imageUrls: [
      'https://instagram.fkno6-1.fna.fbcdn.net/v/t51.2885-15/368143188_317683457284821_899888273743313072_n.jpg?stp=dst-jpg_e35_p1080x1080&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE3OTcuc2RyIn0&_nc_ht=instagram.fkno6-1.fna.fbcdn.net&_nc_cat=109&_nc_ohc=M9NaB-Ft-aIAX-YapFc&edm=ACWDqb8BAAAA&ccb=7-5&ig_cache_key=MzE3MTIyODEwODY5ODA0MjkzOQ%3D%3D.2-ccb7-5&oh=00_AfADAHsDhiXpqzjvir5Iuuprl840bWaBVATcdk01ZH-y9w&oe=6531A3E8&_nc_sid=ee9879'
    ],
  ),
  CafePlace(
    name: 'RCRDs Coffee',
    location:
        'Jl. Cemara No.9, Suka Maju, Kec. Sail, Kota Pekanbaru, Riau 28127',
    openDays: 'Open Everyday',
    rate: '4.2',
    openTime: '11:00 - 23:00',
    imageAsset: 'images/rcrd.jpeg',
    imageUrls: [
      'https://instagram.fkno6-1.fna.fbcdn.net/v/t51.2885-15/368143188_317683457284821_899888273743313072_n.jpg?stp=dst-jpg_e35_p1080x1080&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE3OTcuc2RyIn0&_nc_ht=instagram.fkno6-1.fna.fbcdn.net&_nc_cat=109&_nc_ohc=M9NaB-Ft-aIAX-YapFc&edm=ACWDqb8BAAAA&ccb=7-5&ig_cache_key=MzE3MTIyODEwODY5ODA0MjkzOQ%3D%3D.2-ccb7-5&oh=00_AfADAHsDhiXpqzjvir5Iuuprl840bWaBVATcdk01ZH-y9w&oe=6531A3E8&_nc_sid=ee9879'
    ],
  ),
];
