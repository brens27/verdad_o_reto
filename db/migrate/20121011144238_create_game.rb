class CreateGame < ActiveRecord::Migration
  def change
    create_table :trues do |t|
      # Completa con las columnas que necesites
				t.string  :question
				t.timestamps   	
    end

    create_table :dares do |t|
    	t.string  :question
    	t.timestamps
    end

  	create_table :answers do |t|
  		t.string  :answer
  		t.timestamps
  	end
  end 
end
