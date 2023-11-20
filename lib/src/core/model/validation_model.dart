class ValidationModel {
  final String text;
  final String? Function(String?) validationFunction;
  ValidationModel({required this.text,required this.validationFunction});
  
}
