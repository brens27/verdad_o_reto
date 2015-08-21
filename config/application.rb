require 'active_record'
require 'sqlite3'
require 'yaml'

require_relative '../app/models/answer'
require_relative '../app/models/true'
require_relative '../app/models/dare'

require_relative '../app/controllers/game_controller'
require_relative '../app/views/game_view'

configuration = YAML::load_file(File.join(__dir__, 'database.yml'))
ActiveRecord::Base.establish_connection(configuration['development'])
