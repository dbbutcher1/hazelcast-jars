require File.expand_path(File.dirname(__FILE__) + '/../../lib/hazelcast/jars/version')

module Hazelcast
  class Jars
    class << self

      # Adding .gsub( "\n", '' ) to remove newline character due to possible bug

      def client
        require "hazelcast/jars/hazelcast-client-#{version}.jar".gsub( "\n", '' )
      end

      def server
        require "hazelcast/jars/hazelcast-#{version}.jar".gsub( "\n", '' )
      end

      def all
        require "hazelcast/jars/hazelcast-all-#{version}.jar".gsub( "\n", '' )
      end

      def spring
        require "hazelcast/jars/hazelcast-spring-#{version}.jar".gsub( "\n", '' )
      end

    end
  end
end
