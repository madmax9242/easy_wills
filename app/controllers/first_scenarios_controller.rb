class FirstScenariosController < ApplicationController
	def index
		@first_scenario = First_Scenario.new
	end

	def new
		#Makes a new first_scenario, but does not save to database
		@first_scenario = First_Scenario.new
	end

	def create
		#Makes and saves new first_scenario to database
		@first_scenario = First_Scenario.new(first_scenario_params)
		@first_scenario.user_id = current_user.id
		@first_scenario.save

		respond_to do |format|
			if @first_scenario.save
				format.html { redirect_to :second_scenarios, notice: 'First scenario was successfully created.' }
				format.json { render :show, status: :created, location: @first_scenario }
			else
				format.html { render :new }
				format.json { render json: @first_scenario.errors, status: :unprocessable_entity }
			end
		end
	end

	def show
		@first_scenario = first_scenario.find(params[:id])
	end

	def update
		@first_scenario = first_scenario.find(params[:id])
		respond_to do |format|
			if @first_scenario.update(first_scenario_params)
		    	format.html { redirect_to @first_scenario, notice: 'first_scenario was successfully updated.' }
		    	format.json { render :show, status: :ok, location: @first_scenario }
			else
		    	format.html { render :edit }
		    	format.json { render json: @first_scenario.errors, status: :unprocessable_entity }
		  	end
		end
	end

	def destroy
		#Destroys first_scenario
		@first_scenario.destroy
		respond_to do |format|
		  format.html { redirect_to users_url, notice: 'first_scenario was successfully destroyed.' }
		  format.json { head :no_content }
		end
	end

	private
		#Defines which parameters can be passed into the database
		def first_scenario_params
			params.require(:first_scenario).permit(:user_id, :ami_cc_only, :ami_cc_plus, :ami_reg_med, :ami_invasive, :ami_respirator, :ami_dialysis, :ami_cpr,:bi_cc_only, :bi_cc_plus, :bi_reg_med, :bi_invasive, :bi_respirator, :bi_dialysis, :bi_cpr)
		end
end