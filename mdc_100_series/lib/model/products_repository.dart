// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'product.dart';

class ProductsRepository {
  static List<Product> loadProducts(Category category) {
    const allProducts = <Product>[
      Product(
        category: Category.accessories,
        id: 0,
        isFeatured: true,
        name: 'HG RX 78-2',
        price: 120000,
      ),
      Product(
        category: Category.accessories,
        id: 1,
        isFeatured: true,
        name: 'HG Char Zaku II',
        price: 200000,
      ),
      Product(
        category: Category.accessories,
        id: 2,
        isFeatured: false,
        name: 'MG Wing Gundam Zero EW Ver. ka',
        price: 1000000,
      ),
      Product(
        category: Category.accessories,
        id: 3,
        isFeatured: true,
        name: 'RG Nu-Gundam',
        price: 980000,
      ),
      Product(
        category: Category.accessories,
        id: 4,
        isFeatured: false,
        name: 'RG Sazabi',
        price: 340000,
      ),
      Product(
        category: Category.accessories,
        id: 5,
        isFeatured: false,
        name: 'HG Psycho Gundam Mark II',
        price: 120000,
      ),
      Product(
        category: Category.accessories,
        id: 6,
        isFeatured: false,
        name: 'MG Turn-A Gundam',
        price: 160000,
      ),
      Product(
        category: Category.accessories,
        id: 7,
        isFeatured: true,
        name: 'HG Aerial',
        price: 400000,
      ),
      Product(
        category: Category.accessories,
        id: 8,
        isFeatured: true,
        name: 'HG Lfrith',
        price: 198000,
      ),
      Product(
        category: Category.home,
        id: 9,
        isFeatured: true,
        name: 'HG Darilbalde',
        price: 58000,
      ),
      Product(
        category: Category.home,
        id: 10,
        isFeatured: false,
        name: 'HG Strike Freedom Gundam',
        price: 18000,
      ),
      Product(
        category: Category.home,
        id: 11,
        isFeatured: false,
        name: 'HG Gouf Custom',
        price: 180000,
      ),
    ];
    if (category == Category.all) {
      return allProducts;
    } else {
      return allProducts.where((Product p) {
        return p.category == category;
      }).toList();
    }
  }
}
