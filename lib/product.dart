class Product {
  Product({required this.id,required this.image, required this.pname});
  final int id;
  final String image;
  final String pname;
}
  class Products{
  static List<Product> prod=[
  Product(id:1,image: 'assets/images/bs.jpeg', pname: 'Blue jeans'),
  Product(id:2,image: 'assets/images/cr.jpeg', pname: 'Churidar'),
  Product(id:3,image: 'assets/images/ct.jpeg', pname: 'Cotton t-shirts'),
  Product(id:4,image: 'assets/images/fp.webp', pname: 'Formal pants'),
  Product(id:5,image: 'assets/images/gs.jpeg', pname: 'Green shirt'),
  Product(id:6,image: 'assets/images/ss.jpeg', pname: 'Silk dresses'),
  Product(id:7,image: 'assets/images/ws.webp', pname: 'White sweater'),
  Product(id:8,image: 'assets/images/s.webp', pname: 'Sarees'),
  ];
  }



class Product1 {
  Product1({required this.id,required this.image, required this.pname});
  final int id;
  final String image;
  final String pname;
}
class Products1{
  static List<Product1> prod1=[
    Product1(id:1,image: 'assets/images/bs.jpeg', pname: 'Blue jeans'),
    Product1(id: 2,image: 'assets/images/cr.jpeg', pname: 'Churidar'),
    Product1(id:3,image: 'assets/images/ct.jpeg', pname: 'Cotton t-shirts'),
    Product1(id:4,image: 'assets/images/fp.webp', pname: 'Formal pants'),
    Product1(id:5,image: 'assets/images/gs.jpeg', pname: 'Green shirt'),
    Product1(id:6,image: 'assets/images/ss.jpeg', pname: 'Silk dresses'),
  ];
}


