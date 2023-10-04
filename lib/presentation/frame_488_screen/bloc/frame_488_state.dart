// ignore_for_file: must_be_immutable

part of 'frame_488_bloc.dart';

/// Represents the state of Frame488 in the application.
class Frame488State extends Equatable {
  Frame488State({this.frame488ModelObj});

  Frame488Model? frame488ModelObj;

  @override
  List<Object?> get props => [
        frame488ModelObj,
      ];
  Frame488State copyWith({Frame488Model? frame488ModelObj}) {
    return Frame488State(
      frame488ModelObj: frame488ModelObj ?? this.frame488ModelObj,
    );
  }
}
