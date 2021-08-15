class Maintenance
  attr_accessor :state
  
  def save 
    File.open(Maintenance.maintenance_path, 'w+') do |f|
        f.write(@state)
    end
  end

  def self.load
      maintenance = Maintenance.new
      maintenance.state = File.read(maintenance_path)

      maintenance
  end

  private 

  def self.maintenance_path
      File.join(Rails.root, 'tmp', 'maintenance_path.txt')
  end
end
