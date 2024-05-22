import 'package:fpdart/fpdart.dart';

///
abstract mixin class Ref<Message, Reply> {
  ///
  Reply send(Message message) {
    throw UnimplementedError();
  }

  ///
  Ref<MessageT, ReplyT> ref<MessageT, ReplyT, PropsT>(PropsT props) {
    throw UnimplementedError();
  }
}
