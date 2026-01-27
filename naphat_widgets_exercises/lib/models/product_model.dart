class ProductModel {
  final int id;
  final String name;
  final double price;
  final String imageUrl;
  final String description;
  final double rating;

  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
    required this.rating,
  });
}

final List<ProductModel> products = [
  ProductModel(
    id: 1,
    name: 'Meat',
    price: 200.00,
    imageUrl: 'assets/images/meat.jpg',
    description:
        'In Heartopia, meat isn’t just protein—it’s comfort with muscle. It comes from well-cared animals raised on open fields, carrying warmth and strength in every cut. Cooking it boosts stamina and courage, making it a favorite for adventurers and hard workers. You eat meat when you’re about to do something bold.',
    rating: 4.5,
  ),
  ProductModel(
    id: 2,
    name: 'Egg',
    price: 100.00,
    imageUrl: 'assets/images/egg.jpg',
    description:
        'Eggs are symbols of potential in Heartopia. Simple on the outside, endlessly useful inside. Farmers love them, chefs rely on them, and everyone respects them. Whether boiled, fried, or baked into something bigger, eggs are about beginnings and possibilities.',
    rating: 4.0,
  ),
  ProductModel(
    id: 3,
    name: 'Milk',
    price: 30.00,
    imageUrl: 'assets/images/milk.jpg',
    description:
        'Milk here is gentle, clean, and quietly powerful. It’s collected every morning when the world is still soft and calm. Used in countless recipes, milk represents care, routine, and stability. Drink it and you feel grounded—like Heartopia itself has your back.',
    rating: 3.5,
  ),
  ProductModel(
    id: 4,
    name: 'Cheese',
    price: 100.00,
    imageUrl: 'assets/images/cheese.jpg',
    description:
        'Cheese in Heartopia is pure joy in solid form. Aged slowly in wooden cellars, it smells rich, tastes deep, and feels like a reward. Villagers swear it improves mood and creativity—and honestly, they’re right. This is the food you bring to picnics, festivals, or emotional recovery days.',
    rating: 4.2,
  ),
  ProductModel(
    id: 5,
    name: 'Butter',
    price: 150.00,
    imageUrl: 'assets/images/butter.jpg',
    description:
        'Butter is luxury without arrogance. Churned slowly from fresh milk, it melts smoothly and upgrades everything it touches. Bakers guard it like treasure. In Heartopia, butter equals warmth, richness, and that “home-cooked” feeling that fixes bad days instantly.',
    rating: 4.8,
  ),
  ProductModel(
    id: 6,
    name: 'Coffee Beans',
    price: 650.00,
    imageUrl: 'assets/images/coffeebeans.jpg',
    description:
        'Coffee beans are liquid motivation waiting to happen. Grown in misty highlands, roasted with precision, they carry a bold aroma that wakes up the entire street. In Heartopia, coffee isn’t just for energy—it’s for focus, late-night ideas, and serious conversations. This is hustle in edible form.',
    rating: 3.8,
  ),
];
