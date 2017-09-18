::Sass.load_paths << File.join(root, "node_modules")

set :haml, { :format => :html5 }
set :markdown_engine, :redcarpet

# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Layouts
# ttps://middlemanapp.com/basics/layouts/h

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

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

# configure :build do
#   activate :minify_css
#   activate :minify_javascript
# end

activate :contentful do |f|
  f.space         = {blag: 'qarwnf4u2a1e'}
  f.access_token  = '93ec902ace1135382f942d773662f828b47a7d8755a5af186dd8e9ff7c4a8deb'
  f.cda_query     = {}
  f.content_types = { posts: 'post'}
end

