import 'package:firebase_auth/firebase_auth.dart';
import 'package:givethem/domain/auth/user.dart';
import 'package:givethem/domain/core/value_objects.dart';

extension FirebaseUserDomainX on FirebaseUser {
  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(uid),
    );
  }
}
