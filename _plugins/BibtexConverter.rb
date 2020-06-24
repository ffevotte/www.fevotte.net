module Jekyll

  class BibtexPage < Page
    def initialize(page, list, bibtex)
      @site = page.site
      @base = page.site.source
      @dir  = page.dir
      @name = bibtex
      self.process(@name)

      self.content = File.read("bibtex_bib.html").
                     gsub("bibtex.html", list).
                     sub("<p>", "<p class='text-muted'>")

      self.data = page.data.clone
      self.data.delete('permalink')

      self.data['layout'] = page.data["bibtex_layout"] ||
                            page.data["layout"]

      self.data['title']  = page.data["bibtex_title"] ||
                            (page.data["title"] + " (bibtex file)")
    end
  end

  require 'tmpdir'

  class BibtexGenerator < Generator
    safe true

    def generate(site)
      toAdd = []
      site.pages.each do |page|
        if (page.ext == ".bib")
          File.open(page.path, "r") do |bibfile|
            Dir.mktmpdir do |tmp|
              Dir.chdir(tmp) do

                bibtex_opts = page.data["bibtex_opts"] || ""
                bibtex_cmd = "bibtex2html --nodoc #{bibtex_opts} -o bibtex"
                puts "Running: `#{bibtex_cmd}'"
                IO.popen(bibtex_cmd, 'w+') do |subprocess|
                  subprocess.write(bibfile.read)
                  subprocess.close_write
                  subprocess.read
                end

                if (page.data["permalink"])
                  if (page.data["permalink"].end_with? "/")
                    list = "index.html"
                  else
                    list = page.data["permalink"].split(File::SEPARATOR)[-1]
                  end
                else
                  list = page.basename + ".html"
                end

                bibtex = page.data["bibtex_name"] || (page.basename + "_bib.html")

                page.content = File.read("bibtex.html").
                               sub("<table>", "<table class='table bibtex2html'>").
                               sub("<p>", "<p class='text-muted'>").
                               gsub("bibtex_bib.html", bibtex)
                page.ext = ".html"

                toAdd << BibtexPage.new(page, list, bibtex)
              end
            end
          end
        end
      end

      toAdd.each do |page|
        site.pages << page
      end
    end
  end

end
