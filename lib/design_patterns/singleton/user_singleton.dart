class UserSingleton {
  static final UserSingleton _instance = UserSingleton._internal();

  String userName = 'Alvaro';
  // using a factory is important
  // because it promises to return _an_ object of this type
  // but it doesn't promise to make a new one.
  factory UserSingleton() {
    return _instance;
  }

  // This named constructor is the "real" constructor
  // It'll be called exactly once, by the static property assignment above
  // it's also private, so it can only be called in this class
  UserSingleton._internal() {
    // initialization logic
  }

  // rest of class as normal, for example:
  void updateUserName(String name) {
    userName = name;
  }
}
