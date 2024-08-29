class Currency {
  final String? id;
  final String? title;
  final String? price;
  final String? changes;
  final String? status;

  Currency.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        price = json['price'],
        changes = json['changes'],
        status = json['status'];
}
