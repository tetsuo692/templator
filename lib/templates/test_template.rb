ask_list("Which test framework should I use ?",
          {:unit => Proc.new{""},
           :rspec => Proc.new{load_template("#{TEMPLATOR_TEMPLATES}/test/rspec_template.rb")},
           :shoulda => Proc.new{load_template("#{TEMPLATOR_TEMPLATES}/test/shoulda_template.rb")}}, :default => :rspec)