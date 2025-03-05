final List<String> coffe_type = [
  'Cappuccino',
  'Macchiato',
  'Latte',
  'Mocha',
  'Espresso',
];

class CoffeItem {
  final String name;
  final String description;
  final double price;
  final String imagePath;

  CoffeItem({
    required this.name,
    required this.description,
    required this.price,
    required this.imagePath,
  });
}

final List<CoffeItem> coffeItemList = [
  CoffeItem(
    name: 'Cappuccino',
    description:
        'with Chocolatewith ChocolatewithChocolatewithChocolatewithChocolatewithChocolatewithChocolatewithChocolatewith Chocolatewith Chocolate',
    price: 3.99,
    imagePath: 'assets/images/basic/coffe.png',
  ),
  CoffeItem(
    name: 'Macchiato',
    description: 'with Caramel',
    price: 4.99,
    imagePath: 'assets/images/basic/coffe.png',
  ),
  CoffeItem(
    name: 'Latte',
    description: 'with Vanilla',
    price: 4.49,
    imagePath: 'assets/images/basic/coffe.png',
  ),
  CoffeItem(
    name: 'Mocha',
    description: 'with Dark Chocolate',
    price: 4.99,
    imagePath: 'assets/images/basic/coffe.png',
  ),
  CoffeItem(
    name: 'Espresso',
    description: 'Classic Italian',
    price: 2.99,
    imagePath: 'assets/images/basic/coffe.png',
  ),
  CoffeItem(
    name: 'Americano',
    description: 'with Hot Water',
    price: 3.49,
    imagePath: 'assets/images/basic/coffe.png',
  ),
  CoffeItem(
    name: 'Flat White',
    description: 'with Steamed Milk',
    price: 4.29,
    imagePath: 'assets/images/basic/coffe.png',
  ),
  CoffeItem(
    name: 'Irish Coffee',
    description: 'with Whiskey',
    price: 5.99,
    imagePath: 'assets/images/basic/coffe.png',
  ),
  CoffeItem(
    name: 'Iced Latte',
    description: 'with Cold Milk',
    price: 4.49,
    imagePath: 'assets/images/basic/coffe.png',
  ),
  CoffeItem(
    name: 'Turkish Coffee',
    description: 'Traditional Style',
    price: 3.99,
    imagePath: 'assets/images/basic/coffe.png',
  ),
];
