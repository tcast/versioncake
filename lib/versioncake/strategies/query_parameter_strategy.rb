module VersionCake
  class QueryParameterStrategy < ExtractionStrategy

    def execute(request)
      if request.query_parameters.key? @@version_string.to_sym
        request.query_parameters[@@version_string.to_sym].to_s
      end
    end

  end
end
