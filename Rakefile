require 'fileutils'
require 'colorator'
require 'rake'
require 'stringex'

posts_dir = '_drafts'

desc 'Staging'
task :staging do
  puts '# building the site ..'.green
  system "bundle exec jekyll b --future"
  puts '# deploying the site ..'.green

  system "rsync -vru -e \"ssh\" --del ?site/* xa6195@xa6.serverdomain.org:/home/www/stagingvimberlin"
  puts '# Please refer to http://vimberlin.wikimatze.de to visit the staging system'.green
end

desc "Begin a new post in #{posts_dir}"
task :p do
  require './_plugins/titlecase.rb'

  puts "What should we call this post for now? (e.g.: January #{Time.now.year} Meetup)".bold.yellow
  name = STDIN.gets.chomp

  puts "What is the publish date of the article? (format %Y-%m-%d)".bold.yellow
  date =  STDIN.gets.chomp

  mkdir_p "#{posts_dir}"
  title = "#{name.gsub(/&/,'&amp;').titlecase}"
  filename = "#{posts_dir}/#{date}-#{name.to_url}.md"

  puts "Creating new post: #{filename}".bold.green
  open(filename, 'w') do |post|
    system "mkdir -p #{posts_dir}/";
    post.puts "---"
    post.puts "layout: meetup"
    post.puts "title: #{title.gsub(/&/,'&amp;').titlecase}"
    post.puts "when: #{date}T19:00"
    post.puts "ends: #{date}T22:30"
    post.puts "where: inberlin|wunderlist|absolventa|bitcrowd|berlinonline|buero20|intimes|launcho|launchco_new|matthias|thoughtworks|travis|wooga"
    post.puts "---"
  end

  system "vim #{filename}"
end

desc 'Deploy'
task :d do
  puts "Clear jekyll ..".bold.green
  system 'bundle exec jekyll clean'

  puts "Building jekyll ..".bold.green
  system 'bundle exec jekyll build --future'

  puts "Deploying site with lovely rsync ..".bold.green
  system 'rsync -vru -e \"ssh\" --del ?site/* xa6195@xa6.serverdomain.org:/home/www/vimberlin/'

  puts 'Done!'.bold.green
end

desc "Startup Jekyll"
task :s do
  system 'bundle exec jekyll s --drafts --future --watch'
end

task :default => :s
