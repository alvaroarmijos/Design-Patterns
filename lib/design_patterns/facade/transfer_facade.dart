import 'package:design_patterns/design_patterns/facade/analytics_manager.dart';
import 'package:design_patterns/design_patterns/facade/security_manager.dart';
import 'package:design_patterns/design_patterns/facade/transfer_manager.dart';

class TransferFacade {
  //Instances of the different systems
  final AnalyticsManager analyticsManager = AnalyticsManager();
  final SecurityManager securityManager = SecurityManager();
  final TransferManager transferManager = TransferManager();

  void transfer() {
    //With this, we achieve that Facade encapsulates the complexity of 3 subsystems
    //In just a transfer method

    final token = securityManager.getToken();
    analyticsManager.registerTransfer(token);
    transferManager.transfer(token);
  }
}
