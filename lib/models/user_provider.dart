import 'user.dart';
import '../networking_repository.dart';
import '../request_provider.dart';

class UserProvider extends RequestProvider<User?> {
  void searchUser(String username, NetworkingRepository networkingRepository) {
    executeRequest(requestBuilder: () => networkingRepository.fetchUser(username));
  }
}
