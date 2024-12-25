class Analysis {
  final String title;
  final double price;
  final String duration;
  int quantity;

  Analysis({required this.title, required this.price, required this.duration, this.quantity = 1,});
}

List<Analysis> analyses = [
  Analysis(
    title: 'ПЦР-тест на определение РНК коронавируса стандартный',
    price: 1800,
    duration: '2 дня',
  ),
  Analysis(
    title: 'Клинический анализ крови с лейкоцитарной формулировкой',
    price: 690,
    duration: '1 день',
  ),
  Analysis(
    title: 'Биохимический анализ крови, базовый',
    price: 2440,
    duration: '1 день',
  ),
  Analysis(
    title: 'Щитовидная железа, скриниг',
    price: 2030,
    duration: '1 дня',
  ),
  Analysis(
    title: 'Глюкоза',
    price: 390,
    duration: '1 день',
  ),
  Analysis(
    title: 'Общий анализ крови без лейкоцитарной формулы (Капиллярная кровь)',
    price: 410,
    duration: '1 день',
  ),
  Analysis(
    title: 'Свертывающая система крови',
    price: 2080,
    duration: '1 день',
  ),
];
