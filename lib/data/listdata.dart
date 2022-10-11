import 'package:managment/data/1.dart';

List<money> geter() {
  money upwork = money();
  upwork.name = 'upwork';
  upwork.fee = '650';
  upwork.time = 'Hoje';
  upwork.image = 'up.png';
  upwork.buy = false;
  money starbucks = money();
  starbucks.buy = true;
  starbucks.fee = '15';
  starbucks.image = 'Star.jpg';
  starbucks.name = 'starbucks';
  starbucks.time = 'Hoje';
  money transfer = money();
  transfer.buy = true;
  transfer.fee = '100';
  transfer.image = 'cre.png';
  transfer.name = 'transferência para marquin';
  transfer.time = 'jan 30,2022';
  return [upwork, starbucks, transfer, upwork, starbucks, transfer];
}
