import 'package:flutter/material.dart';

class Transactions {
  // Unique identifier for the transaction
  final String id;

  // Title or description of the transaction
  final String title;

  // Amount of the transaction (can be integer or double)
  final num amount;

  // Date the transaction occurred
  final DateTime date;

  // Optional constructor
  Transactions({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
  });
}
