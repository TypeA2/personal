module Jekyll
    module SortyMediaList
        def sorty_media_list_by_title(input, use_alt_title = false)
            # Adapted from Liquid's standardfilters.rb sort
            # It's just easier to have one specifically for my media objects
            return [] if input.empty?

            lang = use_alt_title ? "alt" : "native"

            input.sort { |a, b| nil_safe_compare(a["titles"][a["display"][lang]], b["titles"][b["display"][lang]]) }
        end

        private

        def nil_safe_compare(a, b)
            result = a <=> b
      
            if result
              result
            elsif a.nil?
              1
            elsif b.nil?
              -1
            else
              raise Liquid::ArgumentError, "cannot sort values of incompatible types"
            end
        end
    end
end

Liquid::Template.register_filter(Jekyll::SortyMediaList)
