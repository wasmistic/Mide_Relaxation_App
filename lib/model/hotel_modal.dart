class HotelModal {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final double price;
  final double rating;

  const HotelModal({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.rating,
  });

  static  List<HotelModal> generateHotels()=> [
    HotelModal(
      id: '1',
      title: 'Ciudad Maderas Hotel',
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
      'assets/images/h1.webp',
      price: 19.49,
      rating: 4,
    ),
    HotelModal(
      id: '2',
      title: 'Fernando Álvarez Rodríguez Hotel',
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
      'assets/images/h2.webp',
      price: 29.69,
      rating: 6,
    ),
    HotelModal(
      id: '3',
      title: 'Edvin Johansson Hotel',
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
      'assets/images/h3.webp',
      price: 89.49,
      rating: 7,
    ),
    HotelModal(
      id: '4',
      title: 'Saad Khan',
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
      'assets/images/h4.webp',
      price: 12.49,
      rating: 3,
    ),
    HotelModal(
      id: '5',
      title: 'Valeriia Bugaiova',
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
      'assets/images/h5.webp',
      price: 88.49,
      rating: 4,
    ),
    HotelModal(
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
}