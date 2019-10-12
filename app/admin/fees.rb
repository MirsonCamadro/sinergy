ActiveAdmin.register Fee do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :user_id, :value, :payed
  #
  # or
  #
  # permit_params do
  #   permitted = [:user_id, :value, :payed]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  index do
    column :id 
    column :email do |user|
      user.user.email
    end
    column :value
    column :payed
    actions
    link_to 'root'
  end

  form do |f|
    inputs 'Asignar cuota' do
     input :user do |user_email|
      user_email.user.email
     end
     input :value 
     input :payed do
        User.email
     end  
    end
    actions
   end

   
  
end
