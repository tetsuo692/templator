ask_list("Which fixture framework should I use ?",
          {:standard => Proc.new{""},
           :factory_girl => Proc.new{load_template("#{TEMPLATOR_TEMPLATES}/fixtures/factory_girl_template.rb")}, :default => :standard)