# From http://stackoverflow.com/a/36769049/1225607
Jekyll::Hooks.register :pages, :post_init do |page|
  begin
    page.data['last-modified-date'] = File.mtime( page.path )
  rescue
    puts "WARNING"
  end
end
