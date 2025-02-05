class IdMeal {
  final String idMeal;
  final String strMeal;
  final String strMealThumb;

  IdMeal({
    required this.idMeal,
    required this.strMeal,
    required this.strMealThumb,
  });

  factory IdMeal.fromJson(Map<String, dynamic> json) {
    return IdMeal(
      idMeal: json['idMeal'],
      strMeal: json['strMeal'],
      strMealThumb: json['strMealThumb'],
    );
  }
}
