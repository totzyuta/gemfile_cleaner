require "gemfile_cleaner"
require "thor"

module GemfileCleaner
  class CLI < Thor
    desc "hello", "hello print"
    def hello
      gems = Array.new
      gems = read_gems
    end

    no_commands do
      def read_gems
        gems = Array.new
        File.open("./lib/Gemfile", "r") do |file|
          file.each_line do |line|
            if line =~ /^gem */
              # gems << line.sub(/gem /, "")
              gems << line.sub(/^gem "/, "")
            elsif line =~ /^group*/
              # separate by each group
            end
          end
        end
      end
    end
  end
end
