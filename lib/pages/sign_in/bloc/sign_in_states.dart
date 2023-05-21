class SignInStates {
  final String email;
  final String password;
  const SignInStates({this.email = "", this.password = ""});

  SignInStates copyWithValues({String? email, String? password}) {
    return SignInStates(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}


// class SignInStates {
//   final String email;
//   final String password;
//   const SignInStates({required this.email, required this.password});

//   SignInStates copyWithValues(
//       {required String email, required String password}) {
//     return SignInStates(
//       email: email,
//       password: password,
//     );
//   }
// }