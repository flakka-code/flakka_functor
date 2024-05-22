import 'package:fpdart/fpdart.dart';

///
sealed class Action<ParamT, ResponseT> {}

///
final class Mutate<CommandT, ErrorT>
    extends Action<CommandT, Either<ErrorT, void>> {}

///
final class Project<QueryT, ViewT> extends Action<QueryT, ViewT> {}
