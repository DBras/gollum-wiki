  # Launch Gollum using a specific git adapter. See https://github.com/gollum/gollum/wiki/Git-adapters
  # Default: rugged
  #
  # Equivalent to --adapter [ADAPTER]

  #module Gollum
    # to require 'my_adapter':
    #Gollum::GIT_ADAPTER = "my"
  #end

  wiki_options = {

    ##############################################################################
    # Command line option equivalents

    #-----------------------------------------------------------------------------

    #-----------------------------------------------------------------------------
    # Enable file uploads. If set to 'dir', Gollum will store all uploads in the
    # /uploads/ directory in repository root. If set to 'page', Gollum will
    # store each upload at the currently edited page.
    # Default: false

    # Equivalent to --allow-uploads dir
    allow_uploads: true,

    # Equivalent to --allow-uploads page
    #allow_uploads: true,
    #per_page_uploads: true,

    #-----------------------------------------------------------------------------
    # Set the path to look for static assets.
    #
    # Equivalent to --assets [PATH]

    #static_assets_path: [PATH]

    #-----------------------------------------------------------------------------
    # Tell Gollum that the git repository should be treated as bare.
    #
    # Equivalent to --bare

    #repo_is_bare: true,

    #-----------------------------------------------------------------------------
    # Specify the leading portion of all Gollum URLs (path info). Setting this to
    # /wiki will make the wiki accessible under http://localhost:4567/wiki/.
    # Default: /
    #
    # Equivalent to --base-path [PATH]

    #base_path: [PATH],

    #-----------------------------------------------------------------------------
    # Enable support for annotations using CriticMarkup.
    #
    # Equivalent to --critic-markup

    #critic_markup: true,

    #-----------------------------------------------------------------------------
    # Tell Gollum to inject custom CSS into each page. Uses custom.css from wiki
    # root
    #
    # Equivalent to --css

    #css: true,

    #-----------------------------------------------------------------------------
    # Parse and interpret emoji tags (e.g. :heart:) except when the leading colon
    # is backslashed (e.g. \:heart:).
    #
    # Equivalent to --emoji

    #emoji: true,

    #-----------------------------------------------------------------------------
    # Tell Gollum to use the first <h1> as page title.
    #
    # Equivalent to --h1-title

    #h1_title: true,

    #-----------------------------------------------------------------------------
    # Specify the hostname or IP address to listen on.
    # Default: '0.0.0.0'.
    #
    # Equivalent to --host [HOST]

    # ???

    #-----------------------------------------------------------------------------
    # Launch Gollum in "console mode", with a predefined API.
    #
    # Equivalent to --irb

    # ???

    #-----------------------------------------------------------------------------
    # Tell Gollum to inject custom JS into each page. Uses custom.js from wiki
    # root.
    #
    # Equivalent to --js

    #js: true,

    #-----------------------------------------------------------------------------
    # Compatibility with 4.x
    # https://github.com/gollum/gollum/wiki/5.0-release-notes#compatibility-option
    #
    # Internal links resolve case-insensitively, will treat spaces as hyphens, and
    # will match the first page found with a certain filename, anywhere in the
    # repository. Provides compatibility with Gollum 4.x.
    #
    # Equivalent to --lenient-tag-lookup

    #hyphened_tag_lookup: true,
    #case_insensitive_tag_lookup: true,
    #global_tag_lookup: true,

    #-----------------------------------------------------------------------------
    # Enables MathJax (renders mathematical equations). By default, uses the
    # TeX-AMS-MML_HTMLorMML config with the autoload-all extension.5
    #
    # Equivalent to --mathjax

    #mathjax: true,

    #-----------------------------------------------------------------------------
    # Specify path to a custom MathJax configuration.
    # Default: mathjax.config.js file from repository root.
    #
    # Equivalent to --mathjax-config [FILE]

    #mathjax_config: [FILE],

    #-----------------------------------------------------------------------------
    # Do not render metadata tables in pages.
    #
    # Equivalent to --no-display-metadata

    #display_metadata: false,

    #-----------------------------------------------------------------------------
    # Disable the feature of editing pages.
    # Default: true
    #
    # Equivalent to --no-edit

    #allow_editing: false,

    #-----------------------------------------------------------------------------
    # Specify the subdirectory for all pages. If set, Gollum will only serve pages
    # from this directory and its subdirectories.
    # Default: repository root.
    #
    # Equivalent to --page-file-dir [PATH]

    page_file_dir: "wikimd/",

    #-----------------------------------------------------------------------------
    # Follow pages across renames in the History view.
    # Default: true.

    # Equivalent to --follow-renames
    #follow_renames: true,

    # Equivalent to --no-follow-renames
    #follow_renames: false,

    #-----------------------------------------------------------------------------
    # Specify the port to bind Gollum with.
    # Default: 4567.
    #
    # Equivalent to --port [PORT]

    # ???

    #-----------------------------------------------------------------------------
    # Specify the git branch to serve.
    # Default: master.
    #
    # Equivalent to --ref [REF]

    #ref: [REF],

    #-----------------------------------------------------------------------------
    # Use static assets.
    # Defaults to false in development/test, true in
    # production/staging.

    # Equivalent to --static
    #static: true,

    # Equivalent to --no-static
    #static: false,

    #-----------------------------------------------------------------------------
    # Specify custom mustache template directory.
    #
    # Equivalent to --template-dir [PATH]

    #template_dir: [PATH],

    #-----------------------------------------------------------------------------
    # Use _Template in root as a template for new pages. Must be committed.
    #
    # Equivalent to --template-page

    #template_page: true,

    #-----------------------------------------------------------------------------
    # Tell Gollum to use specific user icons for history view. Can be set to
    # gravatar, identicon or none.
    # Default: none.
    #
    # Equivalent to --user-icons [MODE]

    #user_icons: [MODE],

    ##############################################################################
    # Metadata (front matter)

    #-----------------------------------------------------------------------------
    # Header counting
    # Default: false
    # Can also be a pre-defined counter. See
    # https://www.w3.org/TR/css-counter-styles-3/#predefined-counters

    #header_enum: false,
    #header_enum: 'decimal-leading-zero',

    #-----------------------------------------------------------------------------
    # Global metadata. Arbitrary metadata that will be applied to each page.

    #metadata: {
    #  monkeyboys: 'are loose in the facility'
    #},

    ##############################################################################
    # Tips

    #-----------------------------------------------------------------------------
    # Force table of contents tag ([[_TOC_]]) into each page.
    # ??? How to set the level in the configuration file?
    # https://github.com/gollum/gollum/wiki#table-of-contents-toc-tag
    # Default: false

    #universal_toc: false,

    #-----------------------------------------------------------------------------
    # Move the sidebar to the left of the page
    # https://github.com/gollum/gollum/issues/1450#issuecomment-599124384

    #sidebar: :left,

    #-----------------------------------------------------------------------------
    # Change the home page name
    # https://github.com/gollum/gollum/issues/1569#issuecomment-633033895

    #index_page: 'index',

    #-----------------------------------------------------------------------------
    # Change the number of changes in the rss feed

    #pagination_count: 15
  }

  #-------------------------------------------------------------------------------
  # Change default markup
  #Precious::App.set(:default_markup, :asciidoc)

  Precious::App.set(:wiki_options, wiki_options)

module Gollum
  class Macro
    class NiceTOC < Gollum::Macro
      def render
        return if @wiki.pages.size.zero?

        content_tag("ul") {
          wiki.map { |name, page| list_item(name, page) }.compact.join
        }
      end

      private

			def add(subtree, filename_parts, gollum_page)
				head, *tail = filename_parts
				subtree[head] ||= {}

        if tail.empty?
          subtree[head] = gollum_page
        else
				  add(subtree[head], tail, gollum_page)
        end

        subtree
			end

      def content_tag(html_tag_name, options = {}, &block)
        tag = [html_tag_name]

        [:class, :href].each do |option|
          tag << "#{option.to_s}=\"#{options[option]}\"" if options[option]
        end

        content = ""
        content += "<#{tag.compact.join(" ")}>"
        content += (yield block).to_s.gsub(/\n/, "")
        content += "</#{html_tag_name}>"
        content
      end

      def list_item(name, gollum_page)
        if gollum_page.is_a?(::Gollum::Page)
          return if @page.url_path == gollum_page.url_path

          content_tag("li") {
            content_tag("a", href: gollum_page.url_path) {
              gollum_page.metadata_title || gollum_page.name
            }
          }
        else
          content_tag("li") {
            content_tag("span") { name } +
              content_tag("ul") {
                gollum_page.map { |nom, page| list_item(nom, page) }.join
              }
          }
        end
      end

			def wiki
        @wiki.pages.reduce({}) { |tree, gollum_page|
          add(
            tree,
            Pathname(gollum_page.path).each_filename.to_a,
            gollum_page
          )
				}
			end
    end
  end
end
