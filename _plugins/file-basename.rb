module Jekyll
    module FileBasename
        def basename(input)
            File.basename(input, File.extname(input))
        end
    end
end

Liquid::Template.register_filter(Jekyll::FileBasename)
