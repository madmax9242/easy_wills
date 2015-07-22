class FourthScenariosController < ApplicationController
	def index 
		@fourth_scenario = Fourth_Scenario.new
	end

	def new
		#Makes a new form, but does not save to database
		@fourth_scenario = Fourth_Scenario.new
	end

	def create
		#Makes and saves new fourth_scenario to database
		@fourth_scenario = Fourth_Scenario.new(fourth_scenario_params)
		@fourth_scenario.user_id = current_user.id
		@fourth_scenario.save
		redirect_to @fourth_scenario

		# respond_to do |format|
		# 	if @fourth_scenario.save
		# 		format.html { redirect_to :forms, notice: 'Fourth scenario was successfully created.' }
		# 		format.json { render :show, status: :created, location: @fourth_scenario }
		# 	else
		# 		format.html { render :new }
		# 		format.json { render json: @fourth_scenario.errors, status: :unprocessable_entity }
		# 	end
		# end
	end

	def show
		@fourth_scenario = fourth_scenario.find(params[:id])
	end

	def update
		@fourth_scenario = fourth_scenario.find(params[:id])
		respond_to do |format|
			if @fourth_scenario.update(fourth_scenario_params)
		    	format.html { redirect_to @fourth_scenario, notice: 'fourth_scenario was successfully updated.' }
		    	format.json { render :show, status: :ok, location: @fourth_scenario }
			else
		    	format.html { render :edit }
		    	format.json { render json: @fourth_scenario.errors, status: :unprocessable_entity }
		  	end
		end
	end

	def destroy
		#Destroys fourth_scenario
		@fourth_scenario.destroy
		respond_to do |format|
		  format.html { redirect_to users_url, notice: 'fourth_scenario was successfully destroyed.' }
		  format.json { head :no_content }
		end
	end

	private
		#Defines which parameters can be passed into the database
		def fourth_scenario_params
			params.require(:fourth_scenario).permit(:user_id, :ami_cc_only, :ami_cc_plus, :ami_reg_med, :ami_invasive, :ami_respirator, :ami_dialysis, :ami_cpr,:bi_cc_only, :bi_cc_plus, :bi_reg_med, :bi_invasive, :bi_respirator, :bi_dialysis, :bi_cpr)
		end
end