class Product {
  final String name;
  final double amount;

  Product({
    required this.name,
    required this.amount,
  });

  void productDetails() {
    print('the product $name is values at $amount');
  }
}

mixin Returned {
  void returnedPolicy() {
    print('return policy is 30 days');
  }
}

mixin Discountable {
  double applyDiscount(double discountPercent) {
    return discountPercent / 100;
  }
}

class Cloth with Returned {
  @override
  void returnedPolicy() {
    print('return policy for cloths is 7 days');
  }
}

class Toy extends Product with Discountable, Returned {
  Toy({required super.name, required super.amount});

  @override
  void returnedPolicy() {
    print('return policy for toy is 10 days');
  }

  @override
  double applyDiscount(double discountPercent) {
    final discountedValue = super.applyDiscount(discountPercent) *amount;

    return amount - discountedValue;
  }

// Overriding discount mixin method
// @override
// double applyDiscount(double discountPercent) {
//   double discount = super.applyDiscount(discountPercent) * amount;
//   return amount - discount;
// }
}

class Clothing extends Product with Discountable {
  Clothing({required super.name, required super.amount}) {}


}

void main() {
  Toy toy = Toy(name: 'car', amount: 100);

  // toy.discountCalc(100);
  // toy.productDetails();
  // print("Price after discount: \$${toy.discountCalc(40)}");
  print("Price after discount: \$${toy.applyDiscount(20)}");
  // toy.discountCalc(30);
  // toy.discountCalc(20);
  // toy.returnedPolicy();
}
