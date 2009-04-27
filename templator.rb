TEMPLATOR_ROOT="#{root}/vendor/templator"

git :clone => "git://github.com/tetsuo692/templator.git #{TEMPLATE_ROOT}"

require "#{TEMPLATOR_ROOT}/lib/helper/common_helper"

yes?("Should I use git as scm ?") ? load_template("#{TEMPLATE_ROOT}/templates/git_template.rb") : load_template("#{TEMPLATE_ROOT}/base_template.rb")