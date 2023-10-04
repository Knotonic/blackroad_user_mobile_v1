// ignore_for_file: must_be_immutable

part of 'member_bloc.dart';

/// Represents the state of Member in the application.
class MemberState extends Equatable {
  MemberState({
    this.messageController,
    this.memberModelObj,
  });

  TextEditingController? messageController;

  MemberModel? memberModelObj;

  @override
  List<Object?> get props => [
        messageController,
        memberModelObj,
      ];
  MemberState copyWith({
    TextEditingController? messageController,
    MemberModel? memberModelObj,
  }) {
    return MemberState(
      messageController: messageController ?? this.messageController,
      memberModelObj: memberModelObj ?? this.memberModelObj,
    );
  }
}
