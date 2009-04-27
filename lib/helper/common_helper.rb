# require 'optparse'
# 
# def ask_list(list = {})
#   unless list.empty?
#     opts = OptionParser.new
#     opts
#   end
# end

def remove_public_files
  inside("public") do
    run "rm index.html"
    run "rm images/rails.png"
  end
end

def copy_database_config
  inside("config") do
    run "mv database.yml database.yml.example"
  end
end