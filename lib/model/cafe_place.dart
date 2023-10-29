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
    rate: '4.6',
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
      'https://assets-pergikuliner.com/iOrSwQlH2Nlg1Zcvfmi9b7UTs3s=/fit-in/1366x768/smart/filters:no_upscale()/https://assets-pergikuliner.com/uploads/image/picture/2907598/picture-1683869748.jpg'
    ],
  ),
  CafePlace(
    name: 'Samara Coffee',
    location:
        'Jl. Merpati Sakti No.22, Simpang Baru, Tampan, Pekanbaru City, Riau 28293',
    openDays: 'Open Everyday',
    rate: '4.5',
    openTime: '09:00 - 23:00',
    imageAsset: 'images/samara.jpeg',
    imageUrls: [
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgMSdnGGeIZBJlXj4UxkClmelmXQnDlALgzWIG4-0ug5BzI8xrSyDlS5hGJGwD2wuVOfWkWD9grxUS0HVPAgbOCvGekPQXItHcEsEwx2I3fcjYQ3FjaV28nUP0MuJIFojt8PgLiBfq-RSiva77WDTwZbsQr20A4NzDS7ZRqu_CNKq3vUr7hp3UDVKoR/w1200-h630-p-k-no-nu/samara%20coffee%20pekanbaru.jpg'
    ],
  ),
  CafePlace(
    name: 'Co,Ma Coffee',
    location:
        'Jl. Diponegoro, Cinta Raja, Kec. Sail, Kota Pekanbaru, Riau 28127',
    openDays: 'Open Everyday',
    rate: '4.5',
    openTime: '10:00 - 22:00',
    imageAsset: 'images/coma.png',
    imageUrls: [
      'https://www.riaumandiri.co/assets/berita/original/39751999471-IMG_20220513_080015.jpg'
    ],
  ),
];
