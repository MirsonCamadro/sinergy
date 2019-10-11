ActiveAdmin.register Expense do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :community_id, :name, :description, :value
  #
  # or
  #
  # permit_params do
  #   permitted = [:community_id, :name, :description, :value]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    column :community_id
    column :name
    column :description
    column :value
    actions
   end
  
end
