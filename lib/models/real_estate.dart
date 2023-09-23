import 'dart:math';

class RealEstate {
  final String imageUrl;
  final String name;
  final String address;
  final double price;
  final int bedRoom;
  final int bathRoom;
  final String category;
  final String description;
  bool isFavorite;
  final double rate;
  final List imageUrls;

  RealEstate({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
    required this.bedRoom,
    required this.bathRoom,
    required this.category,
    required this.description,
    required this.isFavorite,
    required this.rate,
    required this.imageUrls,
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
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Luctus venenatis lectus magna fringilla urna porttitor rhoncus dolor. Sollicitudin nibh sit amet commodo nulla facilisi nullam vehicula ipsum.',
    isFavorite: true,
    rate: 4.8,
    imageUrls: [
      'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
      'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
      'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
    ],
  ),
  RealEstate(
    imageUrl: 'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
    name: 'Luxury Condo',
    address: '456 Oak Avenue, New York, NY',
    price: 3000.0,
    bedRoom: 3,
    bathRoom: 2,
    category: 'Condo',
    description:
        'Sed enim ut sem viverra aliquet. Facilisi nullam vehicula ipsum a arcu cursus vitae. Mauris nunc congue nisi vitae. Risus nec feugiat in fermentum posuere urna. Dui faucibus in ornare quam viverra orci sagittis. Eget felis eget nunc lobortis mattis aliquam faucibus purus in. Faucibus nisl tincidunt eget nullam non. Nisi est sit amet facilisis. Ornare massa eget egestas purus. Quam lacus suspendisse faucibus interdum posuere lorem. Egestas congue quisque egestas diam in. Interdum posuere lorem ipsum dolor sit amet. Consectetur adipiscing elit duis tristique sollicitudin nibh sit.',
    isFavorite: false,
    rate: 4.5,
    imageUrls: [
      'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
      'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
      'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
    ],
  ),
  RealEstate(
    imageUrl: 'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
    name: 'Spacious Family Home',
    address: '789 Elm Street, Chicago, IL',
    price: 2200.0,
    bedRoom: 4,
    bathRoom: 3,
    category: 'House',
    description:
        'Sit amet nisl purus in mollis. Amet consectetur adipiscing elit pellentesque. Ullamcorper malesuada proin libero nunc consequat interdum. Condimentum id venenatis a condimentum vitae sapien pellentesque. Vitae aliquet nec ullamcorper sit amet risus. Mauris sit amet massa vitae. Neque ornare aenean euismod elementum nisi. Tellus molestie nunc non blandit massa enim. Fusce id velit ut tortor. Varius morbi enim nunc faucibus a pellentesque sit amet. Molestie at elementum eu facilisis. Gravida rutrum quisque non tellus orci ac auctor augue. Mattis pellentesque id nibh tortor id aliquet lectus proin.',
    isFavorite: false,
    rate: 4.6,
    imageUrls: [
      'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
      'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
      'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
    ],
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
    description:
        'Urna id volutpat lacus laoreet. Sit amet mattis vulputate enim nulla aliquet porttitor. Convallis tellus id interdum velit. Aliquam vestibulum morbi blandit cursus risus at ultrices mi tempus. Placerat orci nulla pellentesque dignissim enim sit amet. Eget nunc lobortis mattis aliquam faucibus. Leo in vitae turpis massa sed elementum. Massa ultricies mi quis hendrerit.',
    isFavorite: true,
    rate: 4.7,
    imageUrls: [
      'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
      'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
      'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
    ],
  ),
  RealEstate(
    imageUrl: 'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
    name: 'Downtown Loft',
    address: '456 Park Avenue, New York, NY',
    price: 4200.0,
    bedRoom: 3,
    bathRoom: 2,
    category: 'Condo',
    description:
        'In ornare quam viverra orci sagittis eu volutpat. Auctor elit sed vulputate mi sit amet mauris commodo quis. Mauris vitae ultricies leo integer malesuada nunc vel risus commodo. Volutpat consequat mauris nunc congue. Tortor id aliquet lectus proin nibh nisl condimentum id.',
    isFavorite: true,
    rate: 4.5,
    imageUrls: [
      'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
      'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
      'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
    ],
  ),
  RealEstate(
    imageUrl: 'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
    name: 'Central Park View',
    address: '789 5th Avenue, New York, NY',
    price: 5500.0,
    bedRoom: 2,
    bathRoom: 2,
    category: 'Apartment',
    description:
        'Laoreet sit amet cursus sit amet dictum sit amet. Hac habitasse platea dictumst quisque sagittis. Bibendum enim facilisis gravida neque convallis a cras semper. Cras tincidunt lobortis feugiat vivamus. Massa tincidunt nunc pulvinar sapien et ligula ullamcorper malesuada proin. Ante metus dictum at tempor commodo ullamcorper a lacus. Netus et malesuada fames ac. Sed libero enim sed faucibus. Ultricies leo integer malesuada nunc vel risus commodo viverra maecenas. Nisi porta lorem mollis aliquam ut porttitor.',
    isFavorite: false,
    rate: 4.6,
    imageUrls: [
      'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
      'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
      'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
    ],
  ),
  RealEstate(
    imageUrl: 'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
    name: 'Brooklyn Brownstone',
    address: '101 Smith Street, Brooklyn, NY',
    price: 3200.0,
    bedRoom: 4,
    bathRoom: 2,
    category: 'House',
    description:
        'Venenatis cras sed felis eget velit aliquet sagittis id consectetur. Pharetra et ultrices neque ornare aenean euismod elementum. Duis convallis convallis tellus id interdum velit laoreet id donec. Venenatis tellus in metus vulputate eu scelerisque felis. Diam vel quam elementum pulvinar etiam. Faucibus et molestie ac feugiat sed lectus. Tincidunt augue interdum velit euismod. ',
    isFavorite: false,
    rate: 4.5,
    imageUrls: [
      'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
      'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
      'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
    ],
  ),
  RealEstate(
    imageUrl: 'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
    name: 'Luxury Penthouse',
    address: '222 Park Avenue, New York, NY',
    price: 7800.0,
    bedRoom: 3,
    bathRoom: 3,
    category: 'Condo',
    description:
        'Natoque penatibus et magnis dis parturient montes. Proin libero nunc consequat interdum varius sit. Ac feugiat sed lectus vestibulum mattis ullamcorper. Mauris vitae ultricies leo integer malesuada nunc vel risus. Non blandit massa enim nec. Iaculis urna id volutpat lacus laoreet non. Fringilla est ullamcorper eget nulla facilisi etiam dignissim. Donec adipiscing tristique risus nec feugiat in fermentum. Tincidunt dui ut ornare lectus sit amet. Aliquet nibh praesent tristique magna sit amet purus.',
    isFavorite: false,
    rate: 4.0,
    imageUrls: [
      'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
      'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
      'https://picsum.photos/id/${Random().nextInt(25)}/200/300',
    ],
  ),
];
