import 'dart:math';

class RealEstate {
  String imageUrl;
  String name;
  String address;
  double price;
  int bedRoom;
  int bathRoom;
  String category;
  String description;

  RealEstate({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
    required this.bedRoom,
    required this.bathRoom,
    required this.category,
    required this.description,
  });
}

var recommendedList = [
  RealEstate(
    imageUrl: 'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
    name: 'Cozy Cottage',
    address: '123 Main Street, Los Angeles, CA',
    price: 1500.0,
    bedRoom: 2,
    bathRoom: 1,
    category: 'House',
    description: 'Charming cottage with a garden view.',
  ),
  RealEstate(
    imageUrl: 'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
    name: 'Luxury Condo',
    address: '456 Oak Avenue, New York, NY',
    price: 3000.0,
    bedRoom: 3,
    bathRoom: 2,
    category: 'Condo',
    description: 'Modern condo with city skyline views.',
  ),
  RealEstate(
    imageUrl: 'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
    name: 'Spacious Family Home',
    address: '789 Elm Street, Chicago, IL',
    price: 2200.0,
    bedRoom: 4,
    bathRoom: 3,
    category: 'House',
    description: 'Ideal family home with a large backyard.',
  ),
];

var nearbyList = [
  RealEstate(
    imageUrl: 'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
    name: 'Luxury Apartment',
    address: '123 Broadway, New York, NY',
    price: 3500.0,
    bedRoom: 2,
    bathRoom: 2,
    category: 'Apartment',
    description: 'Luxury apartment in the heart of Manhattan.',
  ),
  RealEstate(
    imageUrl: 'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
    name: 'Downtown Loft',
    address: '456 Park Avenue, New York, NY',
    price: 4200.0,
    bedRoom: 3,
    bathRoom: 2,
    category: 'Condo',
    description: 'Modern loft with stunning city views.',
  ),
  RealEstate(
    imageUrl: 'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
    name: 'Central Park View',
    address: '789 5th Avenue, New York, NY',
    price: 5500.0,
    bedRoom: 2,
    bathRoom: 2,
    category: 'Apartment',
    description: 'Luxurious apartment overlooking Central Park.',
  ),
  RealEstate(
    imageUrl: 'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
    name: 'Brooklyn Brownstone',
    address: '101 Smith Street, Brooklyn, NY',
    price: 3200.0,
    bedRoom: 4,
    bathRoom: 2,
    category: 'House',
    description: 'Classic Brooklyn brownstone with a backyard.',
  ),
  RealEstate(
    imageUrl: 'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
    name: 'Luxury Penthouse',
    address: '222 Park Avenue, New York, NY',
    price: 7800.0,
    bedRoom: 3,
    bathRoom: 3,
    category: 'Condo',
    description: 'Elegant penthouse with panoramic city views.',
  ),
];
