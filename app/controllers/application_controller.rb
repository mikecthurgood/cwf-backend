class ApplicationController < ActionController::API

    def get_current_user
        id = decode_token['id']
        User.find_by(id: id)
    end

    def issue_token(data)
        JWT.encode(data, secret)
    end

    private

    def decode_token
        begin
            JWT.decode(token, secret).first
        rescue
            {}
        end
    end

    def token
        request.headers['Authorization']
    end

    def secret
        ENV['CWF_SECRET']
    end

end
