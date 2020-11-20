class Backer
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def back_project(project)
    ProjectBacker.new(project,self)
  end

  def backed_projects
    backed_projects = []
    ProjectBacker.all.each do |project_backer| 
      if project_backer.backer == self
        backed_projects << project_backer.project 
      end
    end
    backed_projects
  end
  
end
