
import 'package:flutter/material.dart';

class PhonicsGroup {
  final String id;

  final List<String> characters;
  final String? practiceLink;
  final String bgImage;
  final Color color;

  PhonicsGroup({
    required this.id,
    required this.characters,
    this.practiceLink,
    required this.bgImage,
    required this.color, 
    
  });
}
