class Backer
  attr_accessor :name, :backed_projects
  @@all = []

  def initialize(name)
    @name = name
    @backed_projects = []
    @backers = []
    @@all << self
  end

  def back_project(project) #>> takes an instance of Project as an argument
    backed_projects << project#>>adding that instance to the @backed_projects array
    project.backers << self#>>adds the backer to the project's backer's array
  end
end
