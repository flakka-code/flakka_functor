import 'package:fpdart/fpdart.dart';

/// A behavior that operates on a state value (A StatefulFunctor?,
// ignore: one_member_abstracts
// abstract base
class ProductionBehavior<MessageT, FailureT, SuccessT, StateT, ProductT,
        PropsT> //
    extends Behavior<
        (PropsT, StateT),
        MessageT,
        FailureT,
        (
          SuccessT,
          List<ProductT>,
          StateT
        )> // implements ProductionHandler<StateT, ProductT, PropsT>
{
  @override
  Effect<(PropsT, StateT), FailureT, (SuccessT, List<ProductT>, StateT)>
      receive(Effect<(PropsT, StateT), Never, MessageT> message) {
    throw UnimplementedError();
  }
}

///
// ignore: one_member_abstracts
// abstract base class Behavior<Env, Message, Failure, Success> {
//   ///
//   // Reply receive(Message message);
//   Effect<Env, Failure, Success> receive(
//     Effect<Env, Never, Message> message,
//   );
// }
//
// ///
// // ignore: one_member_abstracts
// abstract interface class ProductionHandler<StateT, ProductT, PropsT> {
//   ///
//   Effect<PropsT, Never, StateT> apply(
//       Effect<PropsT, Never, (StateT, ProductT)> effect);
// }
//
// ///
// class ActionBehavior {}
//
// ///
// abstract base class FunctorBehavior<MessageT, ReplyT, PropsT>
//     extends EffectBehavior<MessageT, Never, ReplyT, PropsT> {}
class Behavior<T, ReplyT> {
  factory Behavior.receiveMessage() {
    return Behavior();
  }

  Behavior();

  ReplyT receiveMessage()
}
