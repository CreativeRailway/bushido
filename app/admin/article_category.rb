ActiveAdmin.register ArticleCategory do
  index do
    column :title
    default_actions
  end

  form do |f|
    f.inputs "Article details" do
      f.input :title
    end
    f.buttons
  end
end