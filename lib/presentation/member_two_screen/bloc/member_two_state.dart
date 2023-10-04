// ignore_for_file: must_be_immutable

part of 'member_two_bloc.dart';

/// Represents the state of MemberTwo in the application.
class MemberTwoState extends Equatable {
  MemberTwoState({this.memberTwoModelObj});

  MemberTwoModel? memberTwoModelObj;

  @override
  List<Object?> get props => [
        memberTwoModelObj,
      ];
  MemberTwoState copyWith({MemberTwoModel? memberTwoModelObj}) {
    return MemberTwoState(
      memberTwoModelObj: memberTwoModelObj ?? this.memberTwoModelObj,
    );
  }
}
