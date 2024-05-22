import 'package:flakka_functor/src/ref/ref.dart';
import 'package:fpdart/fpdart.dart';
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
