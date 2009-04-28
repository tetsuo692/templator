ask_list("Which views framework should I use ?",
          {:standard => Proc.new{""},
           :haml => Proc.new{load_template("#{TEMPLATOR_TEMPLATES}/views/haml_template.rb")}}, :default => :standard)