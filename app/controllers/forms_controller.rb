class FormsController < ApplicationController
	def new
		@form = Form.new
	end

	def create
		@form = Form.new(form_params)
		#@form = @user.id
		@form.user_id = current_user.id
		@form.save

		respond_to do |format|
			if @form.save
				format.html { redirect_to @form, notice: 'Form was successfully created.' }
				format.json { render :show, status: :created, location: @form }
			else
				format.html { render :new }
				format.json { render json: @form.errors, status: :unprocessable_entity }
			end
		end
	end

	def show
		@form = Form.find(params[:id])
	end

	def destroy
		@form.destroy
		respond_to do |format|
		  format.html { redirect_to users_url, notice: 'Form was successfully destroyed.' }
		  format.json { head :no_content }
		end
	end

	private
		def form_params
			params.require(:form).permit(:user_id, :gh_ami_cc_only, :gh_ami_cc_plus, :gh_ami_reg_med, :gh_ami_invasive, :gh_ami_respirator, :gh_ami_dialysis, :gh_ami_cpr,:gh_bi_cc_only, :gh_bi_cc_plus, :gh_bi_reg_med, :gh_bi_invasive, :gh_bi_respirator, :gh_bi_dialysis, :gh_bi_cpr,:dh_ami_cc_only, :dh_ami_cc_plus, :dh_ami_reg_med, :dh_ami_invasive, :dh_ami_respirator, :dh_ami_dialysis, :dh_ami_cpr,:dh_bi_cc_only, :dh_bi_cc_plus, :dh_bi_reg_med, :dh_bi_invasive, :dh_bi_respirator, :dh_bi_dialysis, :dh_bi_cpr, :esmc_ami_cc_only, :esmc_ami_cc_plus, :esmc_ami_reg_med, :esmc_ami_invasive, :esmc_ami_respirator, :esmc_ami_dialysis, :esmc_ami_cpr,:esmc_bi_cc_only, :esmc_bi_cc_plus, :esmc_bi_reg_med, :esmc_bi_invasive, :esmc_bi_respirator, :esmc_bi_dialysis, :esmc_bi_cpr, :nhi_ami_cc_only, :nhi_ami_cc_plus, :nhi_ami_reg_med, :nhi_ami_invasive, :nhi_ami_respirator, :nhi_ami_dialysis, :nhi_ami_cpr, :nhi_bi_cc_only, :nhi_bi_cc_plus, :nhi_bi_reg_med, :nhi_bi_invasive, :nhi_bi_respirator, :nhi_bi_dialysis, :nhi_bi_cpr)
		end
end