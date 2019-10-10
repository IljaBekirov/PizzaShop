class AddProducts < ActiveRecord::Migration[6.0]
  def change
    Product.create(title: 'Пицца 4 вкуса',
                   description: 'пицца соус, сыр "моцарелла", колбаса "пепперони", бекон, перец "халапеньо", грудка куриная, помидоры, шампиньоны св, ветчина',
                   price: 420,
                   size: 30,
                   is_spicy: true,
                   is_veg: false,
                   is_best_offer: false,
                   path_to_image: '/images/588-1300.jpg')

    Product.create(title: 'Пицца Дьябло',
                   description: 'соус "техасский барбекю", сыр "моцарелла", лук красный, колбаса "салями", ветчина, перец "халапеньо", помидоры, огурцы маринованные',
                   price: 450,
                   size: 30,
                   is_spicy: true,
                   is_veg: false,
                   is_best_offer: false,
                   path_to_image: '/images/593-1300.jpg')

    Product.create(title: 'Пицца Мексиканская',
                   description: 'томатная паста, специи, перец болгарский, лук репчатый, говядина рубленная, фасоль, сыр "моцарелла"',
                   price: 330,
                   size: 30,
                   is_spicy: true,
                   is_veg: false,
                   is_best_offer: true,
                   path_to_image: '/images/835-1300.jpg')

    Product.create(title: 'Пицца Маргарита',
                   description: 'пицца соус, сыр "моцарелла" пицца соус, сыр "моцарелла" пицца соус, сыр "моцарелла" пицца соус, сыр "моцарелла"',
                   price: 300,
                   size: 30,
                   is_spicy: false,
                   is_veg: true,
                   is_best_offer: false,
                   path_to_image: '/images/1-1300.jpg')

    Product.create(title: 'Пицца Гавайская',
                   description: 'пицца соус, сыр "моцарелла", ветчина, ананасы',
                   price: 500,
                   size: 30,
                   is_spicy: false,
                   is_veg: false,
                   is_best_offer: true,
                   path_to_image: '/images/2-1300.jpg')
  end
end
