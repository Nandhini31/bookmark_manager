# As a time-pressed user
# So that I can quickly go to web sites I regularly visit
# I would like to see a list of links on the homepage

#scenarios
#Open Web browser
#Can see Web browser bookmark tab
#can see a list of websites


feature "see list of links on the brower's homepage" do


  scenario 'open the browser and can find the links' do
    Link.create(url: 'http://www.google.com', title:'Google')
    visit '/links'
    expect(page.status_code).to eq 200

    within 'ul#links' do
      expect(page).to have_content('Google')
    end
  end
end
