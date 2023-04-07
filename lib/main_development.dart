import 'package:injectable/injectable.dart';
import 'package:murojaah_web/app/view/app.dart';
import 'package:murojaah_web/bootstrap.dart';

void main() {
  bootstrap(Environment.dev, () => const App());
}
