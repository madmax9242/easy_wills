class FormsController < ApplicationController
	def new
		@form = Form.new
	end

	def create
		@form = Form.new

		respond_to do |format|
			if @form.save
				format.html { redirect_to @form, notice: 'Form was successfully created.' }
				format.json { render :show, status: :created, location: @user }
			else
				format.html { render :new }
				format.json { render json: @form.errors, status: :unprocessable_entity }
			end
		end
	end

	def destroy
		@form.destroy
		respond_to do |format|
		  format.html { redirect_to users_url, notice: 'Form was successfully destroyed.' }
		  format.json { head :no_content }
		end
	end

	# private
	# 	def form_params
	# 		params.require(:gh_ami)
	# 	end
end