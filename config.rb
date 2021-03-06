# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :sprockets

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end


activate :livereload

activate :blog do |blog|
  blog.layout    = 'post'
  blog.paginate  = true
  blog.permalink = ':year/:month/:title'
  blog.prefix    = 'blog'
  blog.per_page  = 1
  blog.default_extension = ".md"
  blog.new_article_template = File.expand_path('../source/template.yml', __FILE__)
end

Time.zone = "US/Eastern"

# Layouts
# https://middlemanapp.com/basics/layouts/

page "/feed.xml", layout: false

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

set :fonts_dir,  "fonts"

redirect "stichfix.html", to: "stitchfix.html"

activate :directory_indexes

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

configure :build do
  activate :minify_css
  activate :minify_javascript
end
#

helpers do
  def nav_link(path)
    if current_page.url == path || current_page.url.split('/')[1] == path.delete('/')
      'active' 
    else
      'inactive'
    end
  end
end
