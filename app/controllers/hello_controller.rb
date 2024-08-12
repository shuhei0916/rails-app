class HelloController < ApplicationController
    def index
        if request.post? then 
            @title = 'Result'
            if params['s1'] then
                @msg = 'You selected:' + params['s1']  
            else
                @msg = 'not selected...'
            end
        else
            @title = 'Index'
            @msg = 'select List...'
        end
    end
end