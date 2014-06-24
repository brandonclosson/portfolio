class StaticPagesController < ApplicationController

  def home
    @rails_projects = Project.where(
                        language_id: Language.find_by_name("Ruby on Rails").id).order(id: :asc);
    @angular_projects = Project.where(
                          language_id: Language.find_by_name("Angular.js").id);
    @ruby_projects = Project.where(
                          language_id: Language.find_by_name("Ruby").id);
    @jQuery_projects = Project.where(
                          language_id: Language.find_by_name("jQuery").id);
    @projects = [@rails_projects, @angular_projects, @ruby_projects, @jQuery_projects]

    @general_bookmarks = Bookmark.where(
                        language_id: Language.find_by_name("General / All Languages").id).order(id: :asc);
    @ruby_bookmarks = Bookmark.where(
                          language_id: Language.find_by_name("Ruby").id);
    @javascript_bookmarks = Bookmark.where(
                          language_id: Language.find_by_name("Javascript").id);
    @bookmarks = [@general_bookmarks, @ruby_bookmarks, @javascript_bookmarks]

  end
end