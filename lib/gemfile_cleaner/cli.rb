require "gemfile_cleaner"
require "thor"

module GemfileCleaner
  class CLI < Thor
    desc "hello", "hello print"
    def hello
      p "yes"
    end
  end
end
