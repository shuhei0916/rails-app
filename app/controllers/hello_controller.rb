class HelloController < ApplicationController
    def index
        @header = 'layout sample'
        @footer = 'copyright SYODA-Tuyano 2020'
        @title = 'New layout'
        @msg = 'this is a sample page!'
    end
end