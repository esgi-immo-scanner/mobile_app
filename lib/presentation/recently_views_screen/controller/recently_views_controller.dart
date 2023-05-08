import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/data/apiClient/asset_manager_api_client.dart';
import 'package:immo_scanner/presentation/recently_views_screen/models/recently_views_model.dart';

class RecentlyViewsController extends GetxController {
  Rx<RecentlyViewsModel> recentlyViewsModelObj = RecentlyViewsModel().obs;

  @override
  void onReady() {
    super.onReady();
    _listAssets();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void _listAssets() async {
    Get.find<AssetManagerClient>().listAsset();
  }
}
