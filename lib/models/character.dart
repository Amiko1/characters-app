import 'package:rpc/models/skill.dart';
import 'package:rpc/models/stats.dart';
import 'package:rpc/models/vocation.dart';

class Character with Stats {
  Character({
    required this.vocation,
    required this.name,
    required this.slogan,
    required this.id,
  });

  // fields
  final Vocation vocation;
  final String name;
  final String id;
  final String slogan;

  final Set<Skill> _skills = {};
  bool _isFav = false;

  // getters
  get isFav => _isFav;
  get skills => _skills;

  // methods
  void toggleIsFav() {
    _isFav = !_isFav;
  }

  void updateSkills(Skill skill) {
    _skills.clear();
    _skills.add(skill);
  }
}

List<Character> characters = [
  Character(
    id: '1',
    name: 'Klara',
    vocation: Vocation.wizard,
    slogan: 'Kapumf!',
  ),
  Character(
    id: '2',
    name: 'Jonny',
    vocation: Vocation.junkie,
    slogan: 'Light me up...',
  ),
  Character(
    id: '3',
    name: 'Crimson',
    vocation: Vocation.raider,
    slogan: 'Fire in the hole!',
  ),
  Character(
    id: '4',
    name: 'Shaun',
    vocation: Vocation.ninja,
    slogan: 'Alright then gang.',
  ),
];
