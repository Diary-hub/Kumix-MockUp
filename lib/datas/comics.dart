class Comic {
  final String title;
  final String titleEN;
  final String date;
  final String author;
  final Set<String> categories;
  final String description;
  final String imgPoster;
  final double rating;
  final String company;
  final double price;

  const Comic({
    required this.title,
    required this.categories,
    required this.description,
    required this.imgPoster,
    required this.author,
    required this.date,
    required this.titleEN,
    required this.rating,
    required this.company,
    required this.price,
  });
}
