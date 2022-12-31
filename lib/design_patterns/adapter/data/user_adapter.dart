import 'package:design_patterns/design_patterns/adapter/data/user_response.dart';
import 'package:design_patterns/design_patterns/adapter/view/user_view_model.dart';

class UserAdapter {
  static UserViewModel getUserViewModel(UserResponse userResponse) {
    return UserViewModel(
      userResponse.userName,
      userResponse.userPhotoUrl,
      userResponse.address,
      userResponse.career,
    );
  }
}
