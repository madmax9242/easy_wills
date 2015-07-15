class SecondScenariosController < ApplicationController
	def index
		@second_scenario = Second_Scenario.new
	end

	def new
		#Makes a new second_scenario, but does not save to database
		@second_scenario = Second_Scenario.new
	end

	def create
		#Makes and saves new second_scenario to database
		@second_scenario = Second_Scenario.new(second_scenario_params)
		@second_scenario.user_id = current_user.id
		@second_scenario.save

		respond_to do |format|
			if @second_scenario.save
				format.html { redirect_to :third_scenarios, notice: 'Second scenario was successfully created.' }
				format.json { render :show, status: :created, location: @second_scenario }
			else
				format.html { render :new }
				format.json { render json: @second_scenario.errors, status: :unprocessable_entity }
			end
		end
	end

	def show
		@second_scenario = second_scenario.find(params[:id])
	end

	def update
		@second_scenario = second_scenario.find(params[:id])
		respond_to do |format|
			if @second_scenario.update(second_scenario_params)
		    	format.html { redirect_to @second_scenario, notice: 'second_scenario was successfully updated.' }
		    	format.json { render :show, status: :ok, location: @second_scenario }
			else
		    	format.html { render :edit }
		    	format.json { render json: @second_scenario.errors, status: :unprocessable_entity }
		  	end
		end
	end

	def destroy
		#Destroys second_scenario
		@second_scenario.destroy
		respond_to do |format|
		  format.html { redirect_to users_url, notice: 'Second scenario was successfully destroyed.' }
		  format.json { head :no_content }
		end
	end

	private
		#Defines which parameters can be passed into the database
		def second_scenario_params
			params.require(:second_scenario).permit(:user_id, :ami_cc_only, :ami_cc_plus, :ami_reg_med, :ami_invasive, :ami_respirator, :ami_dialysis, :ami_cpr,:bi_cc_only, :bi_cc_plus, :bi_reg_med, :bi_invasive, :bi_respirator, :bi_dialysis, :bi_cpr)
		end
end