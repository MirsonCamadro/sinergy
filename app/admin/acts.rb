ActiveAdmin.register Act do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :community_id, :name, :description, :date, :photo
  #
  # or
  #
  # permit_params do
  #   permitted = [:community_id, :name, :description, :date, :photo]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  index do
    column :id 
    column :name
    column :description 
    column :date 
    column :photo 
    actions
  end

  form do |f|
    inputs 'Agregar nueva acta' do
      input :name
      input :description 
      input :date 
      input :photo 
      input :community_id
    end
    actions
   end

  
end
