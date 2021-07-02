class Project
  
  def initialize(project, goal, funding=1000)
    @project = project.upcase
    @goal = goal
    @funding = funding
  end

  def add_funds(amount=1000)
    @funding += amount
    puts "#{@project} got some more funds!"
  end


  def remove_funds(amount=1000)
    @funding -= amount
    puts "#{@project} lost some funds!"
  end


  def to_s
    "Project #{@project} has $#{@funding} in funding towards a goal of $#{@goal}."
  end
end

p1 = Project.new("lmn", 3000, 500)
puts p1

p2 = Project.new("xyz", 75, 25)
puts p2

p1.remove_funds(15)
p2.add_funds(25)

puts p1
puts p2
