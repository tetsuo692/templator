require 'readline'

def ask_list(question, choices = {}, options = {})
  unless choices.empty?
    
    prompt = "your choice "
    prompt << "[#{options[:default]}] " if options[:default]
    prompt << ":"
    
    log "#{question}\n"
    choices.keys.each { |choice| log "- #{choice}\n"}
    
    user_choice = readline("choice [#{value}]: ", true)
    
    user_choice =  options[:default] if user_choice.blank?
    
    choices[user_choice.to_sym].call
  end
end

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