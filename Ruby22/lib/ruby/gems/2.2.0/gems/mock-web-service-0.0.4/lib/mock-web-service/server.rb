require_relative 'async'

module MockWebService

  class Server
    @@requests = []

    def start
      server_settings_that_disable_logging = {AccessLog: []}
      Async.instance.run { Sinatra::Base.start!({:bind => '0.0.0.0', :server_settings => server_settings_that_disable_logging}) }
    end

    def add_response(response)
      Sinatra::Base.reset!
      Sinatra::Base.post '*/*' do
        content_type 'text/xml'
        @@requests.push(request.body.read)
        response
      end
    end

    def get_latest_request
      @@requests.pop
    end

    def get_all_requests
      @@requests
    end

    def clear_requests
      @@requests = []
    end
  end

end