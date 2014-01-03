ActiveAdmin.register Post do
  permit_params :title, :category, :content

  index do
    column :title
    column :category
    column :user_id
    column :content
    default_actions
  end

  filter :user_id

  form do |f|
    f.inputs "User Details" do
      f.input :title
      f.input :category
      f.input :content
    end
    f.actions
  end

end