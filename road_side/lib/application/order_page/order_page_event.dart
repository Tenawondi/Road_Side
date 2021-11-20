part of 'order_page_bloc.dart';

@immutable
abstract class OrderPageEvent {}

class SearchGaragePressed extends OrderPageEvent{
  final String location;

  SearchGaragePressed({
    required this.location,
  });
}

