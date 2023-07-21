class ApplicationController < ActionController::Base
    def hello
        render html: "Hello, Ruby! Deployed to Ruby Application"
    end
end
