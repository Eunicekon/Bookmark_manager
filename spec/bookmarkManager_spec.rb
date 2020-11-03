require 'bookmarkManager'

RSpec.describe Bookmark do 

  describe "#see_all_bookmarks" do
    it "should let me see a list of bookmarks" do

      expect(subject.see_all_bookmarks).to include(
      "http://www.makersacademy.com",
      "http://www.destroyallsoftware.com",
      "http://www.google.com")
    end
  end

end