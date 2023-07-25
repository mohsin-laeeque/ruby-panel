class ApplicationController < ActionController::Base
    def hello
        render html: "Hello, Ruby! Fresh Development"
    end
end
