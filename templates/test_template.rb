ask_list("Which test framework should I use ?",
          {:unit => Proc.new{""},
           :rspec => Proc.new{load_template("#{TEMPLATOR_ROOT}/templates/test_templates/rspec_template.rb")},
           :shoulda => Proc.new{load_template("#{TEMPLATOR_ROOT}/templates/test_templates/shoulda_template.rb")}}, :default => :unit)