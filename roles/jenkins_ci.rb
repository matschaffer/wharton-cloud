name "jenkins_ci"
description "Installs a Jenkins CI server"

run_list "recipe[apt]", "recipe[jenkins]"
