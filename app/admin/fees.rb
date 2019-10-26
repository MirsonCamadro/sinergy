ActiveAdmin.register Fee do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :user_id, :value, :payed, :community, :fees_date
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
    column :community do |user|
      user.user.community
    end
    column :value
    column :payed
    column :fees_date do |fee|
      fee.fees_date.strftime("%m-%Y")
    end
    actions
    link_to 'root'
  end

  form do |f|
    inputs 'Asignar cuota' do
     input :user do
       User.email 
     end
     input :value
     input :fees_date, as: :date_select, discard_day: true
     input :payed do
        User.email
     end  
    end
    actions
   end

   form do |f|
    inputs 'Agregar una nueva cuota' do
      f.input :user_id,
        label: 'Usuario',
        as: :select,
        collection: User.pluck(:email, :id)
      input :value
      input :fees_date, as: :date_select, discard_day: true
      input :payed
      end
      actions
   end
  
end
