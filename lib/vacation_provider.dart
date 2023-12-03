import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class VacationProvider with ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> requestVacation(
      String userId, DateTime startDate, DateTime endDate) async {
    await _firestore.collection('vacations').add({
      'userId': userId,
      'startDate': startDate,
      'endDate': endDate,
      'status':
          'pending', // Puedes agregar más estados (approved, rejected, etc.)
    });
  }

  Stream<QuerySnapshot> getVacations(String userId) {
    return _firestore
        .collection('vacations')
        .where('userId', isEqualTo: userId)
        .snapshots();
  }
}
