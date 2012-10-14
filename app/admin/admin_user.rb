#ActiveAdmin.register AdminUser do
#  index do
#    column :email
#    column :current_sign_in_at
#    column :last_sign_in_at
#    column :sign_in_count
#    default_actions
#  end
#
#  filter :email
#
#  form do |f|
#    f.inputs "Admin Details" do
#      f.input :email
#      f.input :password
#      f.input :password_confirmation
#    end
#    f.buttons
#  end
#end

ActiveAdmin.register User do
    index do
      column :email
      column :username
      column :current_sign_in_at
      column :last_sign_in_at
      column :sign_in_count
      default_actions
    end

  form do |f|
    f.inputs "User Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :role
    end
    f.buttons
  end

  create_or_edit = Proc.new {
    @user = User.find_or_create_by_id(params[:id])
    @user.role = params[:user][:role]
    @user.attributes = params[:user].delete_if do |k, v|
      (k == "admin") ||
          (["password"].include?(k) && v.empty? && !@user.new_record?)
    end
    if @user.save
      redirect_to :action => :show, :id => @user.id
    else
      render active_admin_template((@user.new_record? ? 'new' : 'edit') + '.html.erb')
    end
  }
  member_action :create, :method => :post, &create_or_edit
  member_action :update, :method => :put, &create_or_edit

end