module ProjectsHelper
  def display_icon(group, project)
    return unless project.groups.any?

    image_tag group.icon, alt: 'group-icon', class: 'group-img'
  end

  def total_project(projects)
    total = projects.inject(0) { |acum, project| acum + project.duration }
  end

  # def extra_feature_hours_message(hours)
  #   if hours >= 40
  #     render partial: 'partials/good_job'
  #   else
  #     render partial: 'partials/log_tasks'
  #   end
  # end
end
