class TaskApi
    BASE_URL = "https://localhost:8080"

    def self.all
        faraday.get("#{BASE_URL}/tasks")
    end

    def self.find(id)
        faraday.get("#{BASE_URL}/tasks/#{id}")

    def self.delete
        faraday.get("#{BASE_URL}/tasks/#{id}")
    end

    def self.create(params)
        faraday.post("#{BASE_URL}/tasks") do |req|
            req.headers["Content-Type"] = "application/json"
            req.body = params.to_json
        end
    end

    def self.update(params)
        faraday.put("#{BASE_URL}/tasks/#{id}") do |req|
            req.headers["Content-Type"] = "application/json"
            req.body = params.to_json
        end
    end
end
