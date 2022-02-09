import 'package:flutter_catalog/models/catalog.dart';

CatalogModel _catalog = CatalogModel();

final List<int> _itemIds = []; //store the ids of the items

CatalogModel get catalog => _catalog;

set catalog(CatalogModel newcatalog) {
  assert(newcatalog != null);
  _catalog = newcatalog;
}

List<Item> get items => _itemIds.map((id) => _catalog.getItembyId(id)).toList();

num get totalPrice => items.fold(0, (total, current) => total + current.price);

void get(Item item) {
  _itemIds.add(item.id);
}

void remove(Item item) {
  _itemIds.remove(item.id);
}
