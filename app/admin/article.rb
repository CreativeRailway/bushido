#encoding: utf-8
ActiveAdmin.register Article do
  index do
    column :title
    default_actions
  end

  form do |f|
    render partial: "active_admin/views/articles/form"
    #f.inputs "Article details" do
    #  categories = ArticleCategory.collection_for_select
    #  f.input :title
    #  f.input :description, :input_html => {:class => "ckeditor"}
    #  f.input :content, :input_html => {:class => "ckeditor"}
    #  f.input :visible
    #  f.input :category_id, as: :select, collection: categories, selected: categories.first
    #  f.input :image, :as => :file, :hint => f.template.image_tag(f.object.head_image.url)
    #  f.input :_destroy, as: :boolean, label: "Destroy attach"
    #end
    #f.buttons
  end

  edit = Proc.new {
    @article = Article.find(params[:id])
    if params[:article][:_destroy].present?
      @article.head_image = nil
      params[:article].delete(:_destroy)
    end
    @article.attributes = params[:article]
    @article.save
    redirect_to action: "show", id: @article.id
  }
  member_action :update, :method => :put, &edit
end