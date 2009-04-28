require 'tmpdir'
require 'fileutils'

TEMPLATOR_ROOT = "#{Dir.tmpdir}/templator"
TEMPLATOR_LIB = "#{TEMPLATOR_ROOT}/lib"
TEMPLATOR_TEMPLATES = "#{TEMPLATOR_LIB}/templates"

git :clone => "git://github.com/tetsuo692/templator.git #{TEMPLATOR_ROOT}"

require "#{TEMPLATOR_LIB}/helper/common_helper"


ask_list("Which scm should I use ?",
          {:git => Proc.new{load_template("#{TEMPLATOR_TEMPLATES}/git_template.rb")},
           :none => Proc.new{load_template("#{TEMPLATOR_TEMPLATES}/base_template.rb")}}, :default => :git)
           
log '', 'clean up'

FileUtils.rm_r(TEMPLATOR_ROOT)
