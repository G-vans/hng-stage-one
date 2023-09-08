class ApiController < ApplicationController

    def index
        slack_name = params[:slack_name]
        track = params[:track]
        current_day = Date.today.strftime("%A")
        utc_time = Time.now.utc.strftime("%FT%T%Z")
        github_file_url =
        github_repo_url = "https://github.com/G-vans/hng-stage-one"

        response_data = {
            slack_name: slack_name,
            current_day: current_day,
            utc_time: utc_time,
            track: track,
            github_file_url: github_file_url,
            github_repo_url: github_repo_url,
            status_code: 200
        }

        render json: response_data
    end
end
