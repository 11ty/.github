# Usage: TOKEN=MY_GITHUB_TOKEN_VALUE ./update-all.sh


# Warning: hit a rate limit of ~24 repos at a time, uncomment one line at a time
# The core repo is not included below: "11ty/eleventy"

REPOS=()

# REPOS=("11ty/.github" "11ty/eleventy-img" "11ty/eleventy-fetch" "11ty/11ty-website" "11ty/demo-eleventy-img-netlify-cache" "11ty/api-screenshot" "11ty/eleventy-base-blog" "11ty/eleventy-plugin-syntaxhighlight" "11ty/eleventy-benchmark" "11ty/api-img" "11ty/api-indieweb-avatar" "11ty/api-opengraph-image" "11ty/eleventy-upgrade-help" "11ty/eleventy-plugin-vue" "11ty/eleventy-plugin-directory-output" "11ty/demo-eleventy-serverless" "11ty/eleventy-data-transistor-fm" "11ty/demo-eleventy-serverless-oauth" "11ty/api-explorer" "11ty/component-screenshot" "11ty/eleventy-navigation" "11ty/api-sparkline" "11ty/eleventy-dependency-tree" "11ty/eleventy-plugin-inclusive-language")

# REPOS=("11ty/eleventy-plugin-rss" "11ty/11ty-logo" "11ty/eleventy-assets" "11ty/eleventy-import-disqus" "11ty/eleventy-community" "11ty/giffleball" "11ty/eleventy-inclusive-design-checklist")

for repo in "${REPOS[@]}"; do
  # See also --dry-run
  github-label-sync --allow-added-labels --access-token $TOKEN --labels github-labels.yml $repo 
done