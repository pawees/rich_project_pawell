import 'package:rich_project_pawell/rich/core/config/builders/local_builder.dart';
import 'package:rich_project_pawell/rich/core/config/runners/local_runner.dart';


void main() {
  ///run runner
  final runner = LocalRunner();
  ///run builder
  final builder = LocalBuilder();
  runner.run(builder);

}
