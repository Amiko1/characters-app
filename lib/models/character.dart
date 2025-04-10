import 'package:rpc/models/stats.dart';
import 'package:rpc/models/vocation.dart';

class Character with Stats {
  Character({
    required this.vocation,
    required this.name,
    required this.slogan,
    required this.id,
  });

  final Vocation vocation;
  final String name;
  final String id;
  final String slogan;

  bool _isFav = false;

  get isFav => _isFav;

  void toggleIsFav() {
    _isFav = !_isFav;
  }
}
