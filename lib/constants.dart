import 'package:oranos_experts/models/category_model.dart';
import 'package:oranos_experts/models/expert_model.dart';

List<Expert> experts = [
  Expert(
      name: 'Ali Hassan',
      image: 'assets/expert0.jpg',
      rate: 5,
      field: 'Mobile Development'),
  Expert(
      name: 'Merna Adel',
      image: 'assets/expert3.jpg',
      rate: 4.9,
      field: 'Supply Chain'),
  Expert(
      name: 'Kareem Adel',
      image: 'assets/expert1.jpg',
      rate: 4.6,
      field: 'Web Development'),
  Expert(
      name: 'Amr Moustafa',
      image: 'assets/expert2.jpg',
      rate: 4.5,
      field: 'Law'),
];

List<Category> categories = [
  Category(name: '', experts: 0, image: ''),
  Category(
    name: 'Information Technology',
    image: 'assets/icon-1.svg',
    experts: 23,
  ),
  Category(
    name: 'Supply Chain',
    image: 'assets/icon-2.svg',
    experts: 12,
  ),
  Category(
    name: 'Security',
    image: 'assets/icon-3.svg',
    experts: 14,
  ),
  Category(
    name: 'Human Resource',
    image: 'assets/icon-4.svg',
    experts: 8,
  ),
  Category(
    name: 'Immigration',
    image: 'assets/icon-5.svg',
    experts: 18,
  ),
  Category(
    name: 'Translation',
    image: 'assets/icon-6.svg',
    experts: 3,
  ),
];

List<String> online = [
  'Ali',
  'Ahmed',
  'Lance',
  'Samuel',
  'Hilary',
  'Hend',
];

List<String> chatText = [
  'Hi, Whats your Name Firstname?',
  'Ali',
  'Ok, Ali whats your Lastname?',
  'Hassan',
  'Mr Ali Hassan, What\'s your Title?',
  'Flutter Developer',
  'What Categories you will need expert in?'
];
