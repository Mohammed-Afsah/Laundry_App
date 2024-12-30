class Service {
  Service( {required this.id,required this.servicename, required this.Price});
  final int id;
  final String servicename;
  final double Price;
}

class services {
  static List<Service> serv = [
    Service(id: 1,servicename: 'Washing', Price: 100),
    Service(id: 2,servicename: 'Drying', Price: 100),
    Service(id: 3,servicename: 'Ironing', Price: 100),
    Service(id: 4,servicename: 'Wash & Iron', Price: 100),
    Service(id: 5,servicename: 'Dry Cleaning', Price: 100),
    Service(id: 6,servicename: 'Folding', Price: 100),
    Service(id: 7,servicename: 'Fluff & Fold', Price: 100),
    Service(id: 8,servicename: 'Strain', Price: 100),
    Service(id: 9,servicename: 'Stain Removal', Price: 100),
  ];
}
