require 'redmine'

# Patches to the Redmine core
require 'dispatcher'

Dispatcher.to_prepare do
  require_dependency 'timelog_helper'
  TimelogHelper.send(:include, TimelogHelperPatch)
end

Redmine::Plugin.register :redmine_timelog_projects_breadcrumb do
  name 'Redmine Timelog Projects Breadcrumb plugin'
  author 'Jean-Marie Vallet'
  description 'Redmine plugin used to add project breadcrumb in timelog report'
  url 'https://github.com/jmvallet/redmine_timelog_projects_breadcrumb'
  author_url 'http://jmvallet.net/'
  version '0.0.1'
  
  requires_redmine :version => ['1.0.5']
end
