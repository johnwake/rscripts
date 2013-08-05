#require 'FileOpen'

def check_usage
  unless ARGV.lengh == 2 
    puts "Usage: diff.rb old-inventory-name new-inventory-name"
    exit
  end
end

def boring?(line)
  line.split('/').include?("temp") or #|| "recyler") 
   line.split('/').include?('recyler')
end

def inventory_from(filename)
  inventory = File.open(filename)
  downcased = inventory.collect do |line|
    line.chomp.downcase
  end
  downcased.reject do |line|
    boring?(line)
  end
end

def compare_inventory_files(old_file, new_file)
old_inventory = inventory_from(old_file)
new_inventory = inventory_from(new_file)

puts "The following files have been added"
puts new_inventory - old_inventory

puts ""
puts "The following files have been deleted"
puts old_inventory - new_inventory

if $0 == __FILE__
  check usage
  compare_inventory_files(ARGV[0], ARGV[1])
end
end
