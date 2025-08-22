class UserRegisterRequest {
  final String fullName;
  final String userName;
  final String email;
  final String password;
  final String userRole;
  final String? phoneNumber;
  final String? organizationName;
  final String? organizationEmail;
  final String? organizationType;
  final String? profilePic;

  UserRegisterRequest({
    required this.fullName,
    required this.userName,
    required this.email,
    required this.password,
    required this.userRole,
    this.phoneNumber,
    this.organizationName,
    this.organizationEmail,
    this.organizationType,
    this.profilePic,
  });

  Map<String, dynamic> toJson() => {
        'fullName': fullName,
        'userName': userName,
        'email': email,
        'password': password,
        'userRole': userRole,
        'phoneNumber': phoneNumber,
        'organizationName': organizationName,
        'organizationEmail': organizationEmail,
        'organizationType': organizationType,
        'profilePic': profilePic,
      };
}