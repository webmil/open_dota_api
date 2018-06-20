require 'open_dota_api/entity'

module OpenDotaApi
  module Teams
    class Match < Entity
      def method_missing(m, *args, &block)
        data.keys.include?(m.to_s) ? data[m.to_s] : super
      end

      def respond_to?(m, include_private = false)
        data.keys.include?(m.to_s) ? true : super
      end
    end
  end
end
