import 'package:cloud_firestore/cloud_firestore.dart';

class Employer {
  const Employer({
    required this.employerID,
    required this.name,
    required this.phoneNumber,
    required this.email,
    this.password,
  });
  final String employerID;
  final String name;
  final String phoneNumber;
  final String email;
  final String? password;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'employer_id': employerID,
        'name': name,
        'phone_number': phoneNumber,
        'email': email,
      };

  // ignore: sort_constructors_first
  factory Employer.fromDocument(DocumentSnapshot<Map<String, dynamic>> doc) {
    return Employer(
      employerID: doc.data()?['employer_id'] ?? 'null',
      name: doc.data()?['name'] ?? 'null',
      phoneNumber: doc.data()?['phone_number'] ?? 'null',
      email: doc.data()?['email'] ?? 'null',
    );
  }
}
