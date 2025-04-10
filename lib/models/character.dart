import 'package:rpc/models/stats.dart';

class Character with Stats {
  Character({required this.name, required this.slogan, required this.id});

  final String name;
  final String id;
  final String slogan;

  bool _isFav = false;

  void toggleIsFav() {
    _isFav = !_isFav;
  }
}
