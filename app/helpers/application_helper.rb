module ApplicationHelper
    def show_errors(model)
        pluralize(model.errors.count, 'error') if model.errors.any?
    end
end
