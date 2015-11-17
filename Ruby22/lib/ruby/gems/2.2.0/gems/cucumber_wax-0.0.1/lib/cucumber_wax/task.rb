require 'rake'

module CucumberWax
  class FailIfMissingAssert
    include ::Rake::DSL

    def initialize(task_name)
      @task_name = task_name
      define_task
    end

    def define_task
      task @task_name do |t, params|
        all_matches = []
        Dir.glob('**/*_ste[p][ps].rb').each do |file_path|
          file_content = File.read(file_path)
          unasserted_matcher = /(^Then(?:(?:(?!\.should)(?!expect\()).)*^end$)/m
          matches = unasserted_matcher.match(file_content)

          all_matches << matches.captures unless matches.nil?
        end

        if all_matches.count > 0
          puts "Found the following steps missing an assertion:\n"
          all_matches.each do |match|
            puts match
            puts
          end
          exit 14
        end
      end
    end
  end
end