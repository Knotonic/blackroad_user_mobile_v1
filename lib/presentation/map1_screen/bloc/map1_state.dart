// ignore_for_file: must_be_immutable

part of 'map1_bloc.dart';

/// Represents the state of Map1 in the application.
class Map1State extends Equatable {
  Map1State({this.map1ModelObj});

  Map1Model? map1ModelObj;

  @override
  List<Object?> get props => [
        map1ModelObj,
      ];
  Map1State copyWith({Map1Model? map1ModelObj}) {
    return Map1State(
      map1ModelObj: map1ModelObj ?? this.map1ModelObj,
    );
  }
}
