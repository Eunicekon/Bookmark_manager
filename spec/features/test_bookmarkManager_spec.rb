
feature 'testing feature test works' do
  scenario 'visiting test page' do
    visit('/')
    expect(page).to have_content "Welcome to Bookmark Manager"
  end
end

#As a time-pressed user
#So that I can quickly go to web sites I regularly visit
#I would like to see a list of bookmarks

feature 'view bookmark' do
  scenario 'allow user to see bookmark' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    

    # Add the test data
    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")

    visit('/bookmarks')

    expect(page).to have_content 'http://www.makersacademy.com'
    expect(page).to have_content 'http://www.destroyallsoftware.com'
    expect(page).to have_content 'http://www.google.com'
  end
end

#As a time-pressed user
#So that I can quickly go to web sites I regularly visit
#I would like to add the site's address and title to bookmark manager

