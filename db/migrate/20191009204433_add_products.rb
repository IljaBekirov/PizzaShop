class AddProducts < ActiveRecord::Migration[6.0]
  def change
    Product.create(title: '4vkusa',
                   description: 'Пицца 4 вкуса',
                   price: 420,
                   size: 30,
                   is_spicy: true,
                   is_veg: false,
                   is_best_offer: false,
                   path_to_image: '/images/588-1300.jpg')

    Product.create(title: 'dyablo',
                   description: 'Пицца Дьябло',
                   price: 450,
                   size: 30,
                   is_spicy: true,
                   is_veg: false,
                   is_best_offer: false,
                   path_to_image: '/images/593-1300.jpg')

    Product.create(title: 'meksikanskaya',
                   description: 'Пицца Мексиканская',
                   price: 330,
                   size: 30,
                   is_spicy: true,
                   is_veg: false,
                   is_best_offer: true,
                   path_to_image: '/images/835-1300.jpg')

    Product.create(title: 'margarita',
                   description: 'Пицца Маргарита',
                   price: 300,
                   size: 30,
                   is_spicy: false,
                   is_veg: true,
                   is_best_offer: false,
                   path_to_image: '/images/1-1300.jpg')
  end
end
