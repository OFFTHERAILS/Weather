# rspec sign up
describe "Users" do

  describe "signup" do
      it "should make a new user" do
        lambda do
          visit signup_path
          fill_in "Name",         :with => "admin"
          fill_in "Password",     :with => "admin"
          click_button
          response.should render_template('users/show')
        end.should change(User, :count).by(1)
      end
    end
  end
end