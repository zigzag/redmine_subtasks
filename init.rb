
require 'redmine'

Redmine::Plugin.register :redmine_subtasks do
  name 'Subtasks plugin'
  author 'Aleksei Gusev'
  author_url 'mailto:Aleksei Gusev <aleksei.gusev@gmail.com>?subject=redmine_subtasks'
  description 'This is plugin for Redmine for adding subtasks functionality.'
  url 'http://github.com/hron/redmine_subtasks'
  version '0.0.1'
  requires_redmine :version_or_higher => '0.8.0'

  # remapping permissions
  Redmine::AccessControl.permissions.delete_if do |p|
    p.name == :manage_issue_relations
  end
  project_module :issue_tracking do |map|
    map.permission :manage_issue_relations, {
      :issue_relations => [:new, :destroy],
      :issues => [:add_subissue]
    }
  end

end

