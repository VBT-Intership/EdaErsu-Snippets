class User {
  String name;
  String email;
  final String address;

  User(this.name, this.email, this.address);

  String get getname {
    return name;
  }

  void setname(String name) {
    this.name = name;
  }
}
