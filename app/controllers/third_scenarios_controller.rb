class ThirdScenariosController < ApplicationController
	def new
		#Makes a new third_scenario, but does not save to database
		@third_scenario = third_scenario.new
	end

	def create
		#Makes and saves new third_scenario to database
		@third_scenario = third_scenario.new(third_scenario_params)
		@third_scenario.user_id = current_user.id
		@third_scenario.save

		respond_to do |format|
			if @third_scenario.save
				format.html { redirect_to @third_scenario, notice: 'third_scenario was successfully created.' }
				format.json { render :show, status: :created, location: @third_scenario }
			else
				format.html { render :new }
				format.json { render json: @third_scenario.errors, status: :unprocessable_entity }
			end
		end
	end

	def show
		@third_scenario = third_scenario.find(params[:id])
	end

	def update
		@third_scenario = third_scenario.find(params[:id])
		respond_to do |format|
			if @third_scenario.update(third_scenario_params)
		    	format.html { redirect_to @third_scenario, notice: 'third_scenario was successfully updated.' }
		    	format.json { render :show, status: :ok, location: @third_scenario }
			else
		    	format.html { render :edit }
		    	format.json { render json: @third_scenario.errors, status: :unprocessable_entity }
		  	end
		end
	end

	def destroy
		#Destroys third_scenario
		@third_scenario.destroy
		respond_to do |format|
		  format.html { redirect_to users_url, notice: 'third_scenario was successfully destroyed.' }
		  format.json { head :no_content }
		end
	end

	private
		#Defines which parameters can be passed into the database
		def third_scenario_params
			params.require(:third_scenario).permit(:user_id, :ami_cc_only, :ami_cc_plus, :ami_reg_med, :ami_invasive, :ami_respirator, :ami_dialysis, :ami_cpr,:bi_cc_only, :bi_cc_plus, :bi_reg_med, :bi_invasive, :bi_respirator, :bi_dialysis, :bi_cpr)
		end
end