
require 'redmine'

Redmine::Plugin.register :redmine_subtasks do
  name 'Subtasks plugin'
  author 'Aleksei Gusev'
  author_url 'mailto:Aleksei Gusev <aleksei.gusev@gmail.com>?subject=redmine_subtasks'
  description 'This is plugin for Redmine for adding subtasks functionality.'
  url 'http://github.com/hron/redmine_subtasks'
  version '0.0.1'
  requires_redmine :version_or_higher => '0.8.0'

end

