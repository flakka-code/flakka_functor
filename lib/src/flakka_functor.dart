import 'package:meta/meta.dart';

/// {@template flakka_functor}
/// A model for dispatching and handling typed message-replies
/// {@endtemplate}
class FlakkaFunctor {
  /// {@macro flakka_functor}
  const FlakkaFunctor();
}

///
// ignore: one_member_abstracts
abstract base class RefProvider<Message, Reply, Props> {
  ///
  Ref<Message, Reply> get(Props props);
}

///
abstract class Ref<Message, Reply> {
  ///
  Reply send(Message message);

  ///
  Ref<MessageT, ReplyT> ref<MessageT, ReplyT, PropsT>(PropsT props);
}

///
abstract base class Behavior<Message, Reply, Props> {
  ///
  late String _props;

  ///
  @protected
  set props(String props) => _props = props;

  ///
  @protected
  String get props => _props;

  ///
  Reply receive(Message message);

// ///
// FunctorRef<MessageT, ReplyT> ref<MessageT, ReplyT, PropsT>(
//     FunctorRefProvider<MessageT, ReplyT, PropsT> provider, PropsT props);
}

/// A behavior that operates on a state value (A StatefulFunctor?,
abstract base class StateBehavior<Message, State, Reply, Props>
    extends Behavior<Message, Reply, Props> {
  ///
  @protected
  State get state;

  @protected
  set state(State state);
}

///
// final class ActionBehavior<Action,State,Error,>{}
class MutationBehavior {}

///
class ProjectionBehavior {}

///
class ActionBehavior {}
