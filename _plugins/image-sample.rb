module Jekyll
    module ImageSample
        def sample(input, size)
            "#{File.basename(input, File.extname(input))}-#{size}.webp"
        end
    end
end

Liquid::Template.register_filter(Jekyll::ImageSample)
