GIT_IGNORE_DIR = %w{tmp log vendor}
GIT_INGORE_FILES = %w{log/*.log tmp/**/* config/database.yml db/*.sqlite3 .DS_STORE doc/api doc/app}


git :init

GIT_IGNORE_DIR.each { |directory| file "#{directory}/.gitignore"  } 

file ".gitignore", GIT_INGORE_FILES.join("/\n")

remove_public_files
copy_database_config

git :add => '.'

git :commit => "-a -m 'Initial commit'"


