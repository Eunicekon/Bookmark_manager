
feature 'testing feature test works' do
  scenario 'visiting test page' do
    visit('/')
    expect(page).to have_content "Welcome to Bookmark Manager"
  end
end

feature 'view bookmark' do
  scenario 'allow user to see bookmark' do
    visit('/bookmarks')
    
    expect(page).to have_content 'http://www.makersacademy.com'
    expect(page).to have_content 'http://www.destroyallsoftware.com'
    expect(page).to have_content 'http://www.google.com'
  end
end

#As a time-pressed user
#So that I can quickly go to web sites I regularly visit
#I would like to see a list of bookmarks