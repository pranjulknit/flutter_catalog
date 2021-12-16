import 'package:flutter_catalog/core/store.dart';
import 'package:velocity_x/velocity_x.dart';

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

class AddMutation extends VxMutation<MyStore> {
   final Item item;

  AddMutation(this.item);

  @override
  perform() {
    store.cart._itemIds.add(item.id);
  }
}


class RemoveMutation extends VxMutation<MyStore> {
   final Item item;

  RemoveMutation(this.item);

  @override
  perform() {
    store.cart._itemIds.remove(item.id);
  }
}
