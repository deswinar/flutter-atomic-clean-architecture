// TODO: Implement with Firebase/Auth0/your backend
abstract class AuthRemoteDatasource {
  Future<Map<String, dynamic>> signIn(String email, String password);
  Future<void> signUp(String email, String password);
  Future<void> resetPassword(String email);
  Future<void> signOut();
}

class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  @override
  Future<Map<String, dynamic>> signIn(String email, String password) async {
    // Stub
    return {
      'id': '123',
      'email': email,
      'name': 'John Doe',
    };
  }
  @override
  Future<void> signUp(String email, String password) async {
    // Stub

  }
  @override
  Future<void> resetPassword(String email) async {
    // Stub

  }
  @override
  Future<void> signOut() async {
    // Stub

  }
}
