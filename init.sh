#! /usr/bin/bash

# install node dependencies
npm i -D \
  @heroicons/vue \
  @nuxtjs/tailwindcss \
  prettier

# create necessary dirs
mkdir -p \
  assets/css \
  public/img \
  components \
  pages \
  plugins

# create entry file
touch ./pages/index.vue

# remove unecessary app.vue
rm ./app.vue


# copy config files
path=~/dev/js/node/default_configs/nuxt

cp \
  $path/nuxt.config.ts \
  $path/tailwind.config.js \
  $path/LICENSE \
  .

cp $path/tailwind.css ./assets/css/
