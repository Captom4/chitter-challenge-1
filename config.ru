require './config/environment'

# check if the user has migrated all of the information
if ActiveRecord::Base.connection.migration_context.needs_migration?
  raise 'Migrations are still pending, please enter rake db:migrate into the console to fix.'
end

use Rack::MethodOverride
run ApplicationController
use UserController
use CommentController
use PeepController
