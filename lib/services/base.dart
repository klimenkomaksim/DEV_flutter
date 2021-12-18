import 'package:chopper/chopper.dart';

abstract class BaseService extends ChopperService {
  Future<dynamic> getByPage(int pageNumber);
}
