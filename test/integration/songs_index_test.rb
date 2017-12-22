require 'test_helper'

class SongsEditTest < ActionDispatch::IntegrationTest

def setup
  @admin = users(:paul)
  @non_admin = users(:steve)
  @song = songs(:valid)
end


test "admins can see edit/delete links" do
  #stuff

end

test "users can't see edit/delete links" do
  #stuff
end

test "index will paginate" do
  #stuff
end


end
