class TaskApi
    BASE_URL = "http://localhost:8080"

    def self.all
        Faraday.get("#{BASE_URL}/tasks")
    end

    def self.find(id)
        Faraday.get("#{BASE_URL}/tasks/#{id}")
    end

    def self.delete(id)
        Faraday.delete("#{BASE_URL}/tasks/#{id}")
    end

    def self.create(params)
        Faraday.post("#{BASE_URL}/tasks") do |req|
            req.headers["Content-Type"] = "application/json"
            req.body = params.to_json
        end
    end

    def self.update(params)
        Faraday.put("#{BASE_URL}/tasks/#{params[:id]}") do |req|
            req.headers["Content-Type"] = "application/json"
            req.body = params.to_json
        end
    end
end
