module ApplicationHelper

    def image_set_tag(source, srcset = {}, options = {})
    srcset = srcset.map { |src, size| "#{path_to_image(src)} #{size}" }.join(', ')
    image_tag(source, options.merge(srcset: srcset))
    end

    def flash_class(level)
        case level
          when 'notice' then "alert alert-info"
          when 'success' then "alert alert-success"
          when 'error' then "alert alert-danger"
          when 'alert' then "alert alert-warning"
        end
      end

end
