# frozen_string_literal: true

task :build do
  Rake::Task['cleanup'].invoke
  puts `gem build parker.gemspec`
end

task :publish do
  puts `gem push parker*.gem`
  Rake::Task['cleanup'].invoke
end

task :cleanup do
  FileUtils.rm(Dir['parker*.gem'])
end
