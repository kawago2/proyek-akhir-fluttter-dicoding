class Product {
  final int id;
  final String title, description;
  final List<String> images;

  final double rating, price;

  Product({
    required this.id,
    required this.images,
    this.rating = 0,
    required this.title,
    required this.price,
    required this.description,
  });
}

// demo produk

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/whiskas_1.jpg",
      "assets/images/whiskas_2.jpg",
      "assets/images/whiskas_3.jpg",
    ],
    title: "Whiskas",
    price: 29.694,
    description: description,
    rating: 4.8,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/pedigree_1.jpg",
      "assets/images/pedigree_2.jpg",
      "assets/images/pedigree_3.jpg",
    ],
    title: "PEDIGREE",
    price: 69.404,
    description: description,
    rating: 5.0,
  ),
];

const String description = "Tersedia Varian:\n1. Beef and Veg\n2. Chicken and Veg\n3. Lamb and Veg\n**HADIAH TERBATAS, AKAN DIKIRIM PRODUK TANPA HADIAH TANPA PEMBERITAHUAN \nMakanan Anjing Pedigree mengandung: \nPedigree Baik untuk kesehatan kulit & membuat bulu bersinar. Menjaga kesehatan & kekuatan tulang Menjaga kesehatan pencernaan anjing Membuat otot lebih kuat Mengandung Nutrisi tepat untuk membangun sistem kekebalan tubuh yang baik";
