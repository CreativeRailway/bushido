ActiveAdmin.register Thumbnail do
  index do
    column :title
    column :content
    column :link_text
    column :link_url
    default_actions
  end

  form do |f|
    f.inputs "Thumbnail Details" do
      f.input :title
      f.input :content
      f.input :link_text
      f.input :link_url
      f.input :image, :as => :file, :hint => f.template.image_tag(f.object.image.url)
      f.input :_destroy, as: :boolean, label: "Destroy attach"
    end
    f.buttons
  end

  edit = Proc.new {
    @thumbnail = Thumbnail.find(params[:id])
    if params[:thumbnail][:_destroy].present?
      @thumbnail.image = nil
      params[:thumbnail].delete(:_destroy)
    end
    @thumbnail.attributes = params[:thumbnail]
    @thumbnail.save
    redirect_to action: "show", id: @thumbnail.id
  }
  member_action :update, :method => :put, &edit

end