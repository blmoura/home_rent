class House {
  final double locationInKm;
  final String title;
  final String subtitle;
  final String assetImage;
  final double price;
  final int quantityBedrooms;
  final int quantityBathrooms;

  House({
    required this.locationInKm,
    required this.title,
    required this.subtitle,
    required this.assetImage,
    required this.price,
    required this.quantityBedrooms,
    required this.quantityBathrooms,
  });
}

List<House> getHousesNearFromYou() {
  final houses = <House>[];

  houses.add(
    House(
      locationInKm: 1.8,
      title: 'Dreamsville House',
      subtitle: 'Jl. Sultan Iskandar Muda',
      assetImage: 'assets/images/casa1.jpeg',
      price: 20000.000,
      quantityBedrooms: 6,
      quantityBathrooms: 5,
    ),
  );

  houses.add(
    House(
      locationInKm: 1.6,
      title: 'Ascot House',
      subtitle: 'Jl. Cilandak Tengah',
      assetImage: 'assets/images/casa2.jpeg',
      price: 10000.000,
      quantityBedrooms: 4,
      quantityBathrooms: 4,
    ),
  );

  return houses;
}

List<House> getHousesBestForYou() {
  final houses = <House>[];

  houses.add(
    House(
      locationInKm: 1.8,
      title: 'Orchad House',
      subtitle: 'Jl. Sultan Iskandar Muda',
      assetImage: 'assets/images/casa3.jpeg',
      price: 25000.000,
      quantityBedrooms: 6,
      quantityBathrooms: 4,
    ),
  );

  houses.add(
    House(
      locationInKm: 1.6,
      title: 'The Hollies House',
      subtitle: 'Jl. Cilandak Tengah',
      assetImage: 'assets/images/casa4.jpeg',
      price: 15000.000,
      quantityBedrooms: 5,
      quantityBathrooms: 2,
    ),
  );

  houses.add(
    House(
      locationInKm: 1.6,
      title: 'Sea Breezes House',
      subtitle: 'Jl. Cilandak Tengah',
      assetImage: 'assets/images/casa5.jpeg',
      price: 9000.000,
      quantityBedrooms: 4,
      quantityBathrooms: 4,
    ),
  );

  houses.add(
    House(
      locationInKm: 1.6,
      title: 'Little Copse House',
      subtitle: 'Jl. Cilandak Tengah',
      assetImage: 'assets/images/casa5.jpeg',
      price: 7000.000,
      quantityBedrooms: 3,
      quantityBathrooms: 3,
    ),
  );

  return houses;
}
