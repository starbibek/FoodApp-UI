abstract class UserService {
  Future<List> getUser(String id);
  Future<List> createUser(List user);
  Future<List> updateUser(List user);
  Future<void> deleteUser(String id);
}
