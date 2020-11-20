require_relative "backer.rb"
require_relative "project.rb"
require "pry"

class ProjectBacker
  attr_reader :project, :backer
  @@all = []
  def initialize(project, backer)
    @backer = backer
    @project = project
    self.class.all << self
  end

  def self.all
    @@all
  end

  
end
