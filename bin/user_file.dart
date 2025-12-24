class House {
  House({int id = 0, String name = 'Matthew'}):
        _id = id,
        _name = name;

  final String _name;
  final int _id;

  @override
  String toString() {
    return 'House(id: $_id, name: $_name,)';
  }
}