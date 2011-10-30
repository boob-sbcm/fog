module Fog
  module Compute
    class Clodo
      class Real
        def server_action(id, action)
          request(
                  :body    => MultiJson.encode(action),
                  :expects => [204],
                  :method  => 'POST',
                  :path    => "servers/#{id}/action")
        end
      end
      class Mock
        def server_action(id, action)
          response = Excon::Response.new
          response.status = 204
          response
        end
      end
    end
  end
end
