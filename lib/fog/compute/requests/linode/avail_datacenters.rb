module Fog
  module Linode
    class Compute
      class Real
        def avail_datacenters
          request(
            :expects  => 200,
            :method   => 'GET',
            :query    => { :api_action => 'avail.datacenters' }
          )
        end
      end
    end
  end
end
