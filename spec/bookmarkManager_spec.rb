require 'bookmarkManager'

RSpec.describe Bookmark do 

  describe "#see_all_bookmarks" do
    it "should let me see a list of bookmarks" do
      connection = PG.connect(dbname: 'bookmark_manager_test')

        # test data
        connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
        connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
        connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

      expect(Bookmark.all).to include(
      "http://www.makersacademy.com",
      "http://www.destroyallsoftware.com",
      "http://www.google.com")
    end
  end

end