module MockWebService
  class Async
    include Singleton

    def initialize
      @queue = Queue.new
      Thread.new { loop { @queue.pop.call } }
    end

    def run(&blk)
      @queue.push blk
    end

  end
end