class DishIdMeal {
  final String idMeal;
  final String strMeal;
  final String strInstruction;
  final String strMealThumb;
  final String strYoutube;

  DishIdMeal({
    required this.idMeal,
    required this.strMeal,
    required this.strInstruction,
    required this.strMealThumb,
    required this.strYoutube
  });

  factory DishIdMeal.fromJson(Map<String, dynamic> json) {
    return DishIdMeal(
      idMeal: json['idMeal'],
      strMeal: json['strMeal'],
      strInstruction: json['strInstruction'],
      strMealThumb: json['strMealThumb'],
      strYoutube: json['strYoutube']
    );
  }
}
