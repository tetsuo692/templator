TEMPLATOR_ROOT="#{root}/vendor/templator"

git :clone => "git://github.com/tetsuo692/templator.git #{TEMPLATOR_ROOT}"

require "#{TEMPLATOR_ROOT}/lib/helper/common_helper"

# yes?("Should I use git as scm ?") ? load_template("#{TEMPLATOR_ROOT}/templates/git_template.rb") : load_template("#{TEMPLATOR_ROOT}/base_template.rb")

ask_list("Which scm should I use ?",
          {:git => load_template("#{TEMPLATOR_ROOT}/templates/git_template.rb"),
           :none => load_template("#{TEMPLATOR_ROOT}/base_template.rb")}, :default => :git)