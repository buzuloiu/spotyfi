require 'test_helper'

class SongsEditTest < ActionDispatch::IntegrationTest

def setup
  @user = users(:paul)
  @song = songs(:valid)
end


test "admins can see edit/delete links" do
  #stuff
end

test "users can't see edit/delet links" do
  #stuff
end

test "index will paginate" do
  #stuff
end



end
