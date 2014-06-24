class AddLanguageToProjects < ActiveRecord::Migration
  def change
    add_reference :projects, :language, index: true
  end
end
