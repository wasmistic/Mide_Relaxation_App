class Activity {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final double price;
  final double rating;

  const Activity({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.rating,
  });

  static const List<Activity> activities = [
    Activity(
      id: '1',
      title: 'Cruise and Snorkel the Amalfi Coast',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
          'https://images.unsplash.com/photo-1564671546498-09a366692274?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      price: 39.99,
      rating: 4,
    ),
    Activity(
      id: '2',
      title: 'Hands-on Cooking Class',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
          'https://images.unsplash.com/photo-1576007594790-2c73df2cd761?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      price: 39.99,
      rating: 4,
    ),
    Activity(
      id: '3',
      title: '2-Hours Exclusive Boat Tour',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
          'https://images.unsplash.com/photo-1530345020906-73276f33f411?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      price: 39.99,
      rating: 4,
    ),
    Activity(
      id: '4',
      title: 'Kayak along the Beach and the Grotto',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
          'https://images.unsplash.com/photo-1548678967-f1aec58f6fb2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3432&q=80',
      price: 39.99,
      rating: 4,
    ),
    Activity(
      id: '5',
      title: 'Dine-in a Traditional Farmhouse',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
          'https://images.unsplash.com/photo-1569263900347-06b1e8c825ab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2674&q=80',
      price: 39.99,
      rating: 4,
    ),
    Activity(
      id: '6',
      title: 'Sunset Tour on the Hills',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
          'https://images.unsplash.com/photo-1583823622820-86dd410cb786?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1336&q=80',
      price: 39.99,
      rating: 4,
    ),
    Activity(
      id: '7',
      title: 'Cruise and Snorkel the Amalfi Coast',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
          'https://images.unsplash.com/photo-1564671546498-09a366692274?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      price: 39.99,
      rating: 4,
    ),
    Activity(
      id: '8',
      title: 'Hands-on Cooking Class',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
          'https://images.unsplash.com/photo-1576007594790-2c73df2cd761?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      price: 39.99,
      rating: 4,
    ),
    Activity(
      id: '9',
      title: '2-Hours Exclusive Boat Tour',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
          'https://images.unsplash.com/photo-1530345020906-73276f33f411?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      price: 39.99,
      rating: 4,
    ),
  ];

  static  List<Activity> generateHotels()=> [
    Activity(
      id: '1',
      title: 'Ciudad Maderas Hotel',
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
      'assets/images/h1.webp',
      price: 19.49,
      rating: 4,
    ),
    Activity(
      id: '2',
      title: 'Fernando Álvarez Rodríguez Hotel',
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
      'assets/images/h2.webp',
      price: 29.69,
      rating: 6,
    ),
    Activity(
      id: '3',
      title: 'Edvin Johansson Hotel',
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
      'assets/images/h3.webp',
      price: 89.49,
      rating: 7,
    ),
    Activity(
      id: '4',
      title: 'Saad Khan',
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
      'assets/images/h4.webp',
      price: 12.49,
      rating: 3,
    ),
    Activity(
      id: '5',
      title: 'Valeriia Bugaiova',
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
      'assets/images/h5.webp',
      price: 88.49,
      rating: 4,
    ),
    Activity(
      id: '6',
      title: 'zero take',
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
      'assets/images/h6.webp',
      price: 33.49,
      rating: 4,
    ),

  ];

  static const List<Activity> generateRestaurant = [
    Activity(
      id: '1',
      title: 'Jason Leung Restaurant',
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
      'assets/images/r1.webp',
      price: 19.99,
      rating: 4,
    ),
    Activity(
      id: '2',
      title: 'Adrien Olichon Restaurant',
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
      'assets/images/r2.webp',
      price: 31.99,
      rating: 6,
    ),
    Activity(
      id: '3',
      title: 'Chris Liverani Restaurant',
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
      'assets/images/r3.webp',
      price: 22.39,
      rating: 4,
    ),
    Activity(
      id: '4',
      title: 'Alex Haney Restaurant',
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
      'assets/images/r4.webp',
      price: 12.39,
      rating: 4,
    ),
    Activity(
      id: '5',
      title: 'Pablo Merchán Montes Restuarant',
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
      'assets/images/r5.webp',
      price: 42.39,
      rating: 6,
    ),
    Activity(
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
