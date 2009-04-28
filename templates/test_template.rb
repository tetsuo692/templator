ask_list("Which test framework should I use ?",
          {:unit => Proc.new{""},
           :rspec => Proc.new{load_template("#{TEMPLATOR_ROOT}/templates/test_template/rspec_template.rb")},
           :shoulda => Proc.new{load_template("#{TEMPLATOR_ROOT}/templates/test_template/shoulda_template.rb")}, :default => :unit)