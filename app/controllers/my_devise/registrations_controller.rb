# class MyDevise::RegistrationsController < Devise::RegistrationsController
#   respond_to :html, :js

#   def create
#     super
#     if resource.save
#       respond_to do |format|
#         format.html { redirect_to user_path(resource), notice: 'Account was successfully created.'}
#       end
#     else
#       respond_to do |format|
#         format.html { render :new }
#       end
#     end
#   end
# end
