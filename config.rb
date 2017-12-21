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
  blog.permalink = ':year/:month/:day/:title'
  blog.prefix    = 'posts'
end

# Layouts
# https://middlemanapp.com/basics/layouts/

page "/feed.xml", :layout => false

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

activate :directory_indexes

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

# configure :build do
#   activate :minify_css
#   activate :minify_javascript
# end
#

