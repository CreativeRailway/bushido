#encoding: utf-8
ArticleCategory.all.destroy
ArticleCategory.create(title: "Программирование")
ArticleCategory.create(title: "Игры")
ArticleCategory.create(title: "Мысли")

Thumnail.all.destroy
Thumbnails.create(title: "Почему именно мы?",
                  content: "Сейчас на рынке достаточно веб-разработчиков, предлагающих свои услуги. Наши главные преимущества - быстрота, качество и приемлимые цены (убедитесь в этом, заглянув в раздел 'Портфолио')",
                  link_text: "#",
                  link_url: "#")

Thumbnails.create(title: "Коротко о нас ",
                  content: "Мы - группа rails-разработчиков, которые предлагают свои услуги по разработке сайтов, интернет-магазинов и любых (даже самых больших) веб-приложений.",
                  link_text: "#",
                  link_url: "#")

if User.find_by_role("admin").nil?
  User.create(email: "creative.railway@gmail.com",
              password: "g[gujdyj",
              username: "Creative Railway",
              role: "admin"
  )
end
