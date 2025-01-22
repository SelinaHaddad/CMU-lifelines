import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class LifelinesMapAuthUser {
  LifelinesMapAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<LifelinesMapAuthUser> lifelinesMapAuthUserSubject =
    BehaviorSubject.seeded(LifelinesMapAuthUser(loggedIn: false));
Stream<LifelinesMapAuthUser> lifelinesMapAuthUserStream() =>
    lifelinesMapAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
