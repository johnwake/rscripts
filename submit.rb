require "capybara"
require "capybara/dsl"

Capybara.run_server = false
Capybara.current_driver = :selenium

Url = 'https://itv.planflex.net/planview/login/body.asp'
UserName = 'ENTERUSERNAMEHERE'
Password = 'ENTERPASSWORDHERE'

  class Timesheet
    include Capybara::DSL
    def timesheet
      visit Url
      fill_in 'Username', :with => UserName
      fill_in 'UserPass', :with => Password
      click_button ' Login '
      find('#HV_MAIN_action').click
      find('#DDM_HV_MAIN0_Item1').click
      fill_in 'Mon1ndx1', :with => "7.5"
      fill_in 'Tue1ndx1', :with => "7.5"
      fill_in 'Wed1ndx1', :with => "7.5"
      fill_in 'Thu1ndx1', :with => "7.5"
      fill_in 'Fri1ndx1', :with => "7.5"
      find('#btnTotalAndSave').click
      find('#btnSaveAndClose').click
    end
  end

Timesheet.new.timesheet

