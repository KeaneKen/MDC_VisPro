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
        category: Category.HG,
        id: 0,
        isFeatured: true,
        name: 'HG RX 78-2',
        price: 120000,
      ),
      Product(
        category: Category.HG,
        id: 1,
        isFeatured: true,
        name: 'HG Char Zaku II',
        price: 200000,
      ),
      Product(
        category: Category.MG,
        id: 2,
        isFeatured: false,
        name: 'MG Wing Gundam Zero EW Ver. ka',
        price: 1000000,
      ),
      Product(
        category: Category.RG,
        id: 3,
        isFeatured: true,
        name: 'RG Nu-Gundam',
        price: 980000,
      ),
      Product(
        category: Category.RG,
        id: 4,
        isFeatured: false,
        name: 'RG Sazabi',
        price: 340000,
      ),
      Product(
        category: Category.HG,
        id: 5,
        isFeatured: false,
        name: 'HG Psycho Gundam Mark II',
        price: 120000,
      ),
      Product(
        category: Category.MG,
        id: 6,
        isFeatured: false,
        name: 'MG Turn-A Gundam',
        price: 160000,
      ),
      Product(
        category: Category.HG,
        id: 7,
        isFeatured: true,
        name: 'HG Aerial',
        price: 400000,
      ),
      Product(
        category: Category.HG,
        id: 8,
        isFeatured: true,
        name: 'HG Lfrith',
        price: 198000,
      ),
      Product(
        category: Category.HG,
        id: 9,
        isFeatured: true,
        name: 'HG Darilbalde',
        price: 58000,
      ),
      Product(
        category: Category.HG,
        id: 10,
        isFeatured: false,
        name: 'HG Strike Freedom Gundam',
        price: 18000,
      ),
      Product(
        category: Category.HG,
        id: 11,
        isFeatured: false,
        name: 'HG Gouf Custom',
        price: 180000,
      ),
      Product(
        category: Category.MG,
        id: 12,
        isFeatured: true,
        name: 'MG RX78-2 Ver.3.0',
        price: 180000,
      ),
      Product(
        category: Category.RG,
        id: 13,
        isFeatured: true,
        name: 'RG HI-NU',
        price: 180000,
      ),
      Product(
        category: Category.HG,
        id: 14,
        isFeatured: false,
        name: 'HG Zaku II',
        price: 150000,
      ),
      Product(
        category: Category.HG,
        id: 15,
        isFeatured: false,
        name: 'HG Guncannon',
        price: 160000,
      ),
      Product(
        category: Category.HG,
        id: 16,
        isFeatured: false,
        name: 'HG Quebley',
        price: 170000,
      ),
      Product(
        category: Category.HG,
        id: 17,
        isFeatured: false,
        name: 'HG Shining',
        price: 180000,
      ),
      Product(
        category: Category.HG,
        id: 18,
        isFeatured: true,
        name: 'HG Master Gundam & Fuunsaiki',
        price: 250000,
      ),
      Product(
        category: Category.RG,
        id: 19,
        isFeatured: true,
        name: 'RG Destiny Gundam',
        price: 450000,
      ),
      Product(
        category: Category.RG,
        id: 20,
        isFeatured: true,
        name: 'RG Exia',
        price: 420000,
      ),
      Product(
        category: Category.RG,
        id: 21,
        isFeatured: false,
        name: 'RG Z\'Gok',
        price: 380000,
      ),
      Product(
        category: Category.RG,
        id: 22,
        isFeatured: true,
        name: 'RG Red Frame Astray',
        price: 460000,
      ),
      Product(
        category: Category.RG,
        id: 23,
        isFeatured: true,
        name: 'RG Sinanju',
        price: 550000,
      ),
      Product(
        category: Category.RG,
        id: 24,
        isFeatured: true,
        name: 'RG Unicorn',
        price: 500000,
      ),
      Product(
        category: Category.MG,
        id: 25,
        isFeatured: true,
        name: 'MG RX78-2',
        price: 600000,
      ),
      Product(
        category: Category.MG,
        id: 26,
        isFeatured: true,
        name: 'MG Freedom Ver 2.0',
        price: 750000,
      ),
      Product(
        category: Category.MG,
        id: 27,
        isFeatured: true,
        name: 'MG ZZ Gundam Ver. ka',
        price: 900000,
      ),
      Product(
        category: Category.MG,
        id: 28,
        isFeatured: true,
        name: 'MG Zeta Ver 2.0',
        price: 800000,
      ),
      Product(
        category: Category.MG,
        id: 29,
        isFeatured: true,
        name: 'MG Barbatos',
        price: 650000,
      ),
      Product(
        category: Category.MG,
        id: 30,
        isFeatured: true,
        name: 'MG Narrative Pack-C Ver.Ka',
        price: 950000,
      ),
      Product(
        category: Category.MG,
        id: 31,
        isFeatured: false,
        name: 'MG Dom',
        price: 700000,
      ),
      Product(
        category: Category.MG,
        id: 32,
        isFeatured: false,
        name: 'MG Rick Dom',
        price: 720000,
      ),
      Product(
        category: Category.MG,
        id: 33,
        isFeatured: true,
        name: 'MG Zeta Ver. ka',
        price: 850000,
      ),
      Product(
        category: Category.MG,
        id: 34,
        isFeatured: true,
        name: 'MG God Gundam',
        price: 680000,
      ),
      Product(
        category: Category.RG,
        id: 35,
        isFeatured: true,
        name: 'RG Zeta',
        price: 480000,
      ),
      Product(
        category: Category.RG,
        id: 36,
        isFeatured: false,
        name: 'RG Crossbone',
        price: 440000,
      ),
      Product(
        category: Category.RG,
        id: 37,
        isFeatured: false,
        name: 'RG Force Impulse',
        price: 470000,
      ),
      Product(
        category: Category.RG,
        id: 38,
        isFeatured: true,
        name: 'RG Epyon',
        price: 520000,
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
