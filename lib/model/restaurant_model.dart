class RestaurantModal {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final double price;
  final double rating;

  const RestaurantModal({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.rating,
  });

  static const List<RestaurantModal> generateRestaurant = [
    RestaurantModal(
      id: '1',
      title: 'Jason Leung Restaurant',
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
      'assets/images/r1.webp',
      price: 19.99,
      rating: 4,
    ),
    RestaurantModal(
      id: '2',
      title: 'Adrien Olichon Restaurant',
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
      'assets/images/r2.webp',
      price: 31.99,
      rating: 6,
    ),
    RestaurantModal(
      id: '3',
      title: 'Chris Liverani Restaurant',
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
      'assets/images/r3.webp',
      price: 22.39,
      rating: 4,
    ),
    RestaurantModal(
      id: '4',
      title: 'Alex Haney Restaurant',
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
      'assets/images/r4.webp',
      price: 12.39,
      rating: 4,
    ),
    RestaurantModal(
      id: '5',
      title: 'Pablo Merchán Montes Restuarant',
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
      'assets/images/r5.webp',
      price: 42.39,
      rating: 6,
    ),
    RestaurantModal(
      id: '6',
      title: 'kayleigh harrington restuarant',
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
      'assets/images/r6.webp',
      price: 52.39,
      rating: 8,
    ),

  ];
}