import '../models/catalog.dart';
import 'catalog.dart';

class CartModel {

  // singleton class
  

  //catalog field
  late CatalogModel _catalog;

  // Collection of Ids - storeIds of eachItem
  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  // Get items in the cart

  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  // Get Total Price for

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //Add Item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  //Remove Item

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
