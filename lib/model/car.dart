class Car {
  final String name;
  final String image;
  final String penumpang;
  final int harga;

  const Car({
    required this.name,
    required this.image,
    required this.penumpang,
    required this.harga,
  });
}

const List<Car> cars = [
  Car(
    name: 'Toyota Avanza',
    image: 'images/avanza_1.jpeg',
    penumpang: '5 Penumpang',
    harga: 300000,
  ),
  Car(
    name: 'Toyota Alpard',
    image: 'images/alphard_1.jpeg',
    penumpang: '4 Penumpang',
    harga: 1000000,
  ),
  Car(
    name: 'Mitsubishi Expander',
    image: 'images/expander_1.png',
    penumpang: '5 Penumpang',
    harga: 350000,
  ),
  Car(
    name: 'HONDA HRV',
    image: 'images/hrv-1.png',
    penumpang: '5 Penumpang',
    harga: 500000,
  ),
  Car(
    name: 'Toyota Veloz',
    image: 'images/veloz_1.jpg',
    penumpang: '5 Penumpang',
    harga: 400000,
  ),
  Car(
    name: 'Toyota Yaris',
    image: 'images/yaris_1.png',
    penumpang: '5 Penumpang',
    harga: 300000,
  ),
  Car(
    name: 'Mitsubishi Pajero',
    image: 'images/pajero_1.png',
    penumpang: '7 Penumpang',
    harga: 700000,
  ),
];
