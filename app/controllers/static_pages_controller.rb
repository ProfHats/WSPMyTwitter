class StaticPagesController < ApplicationController

def home
end

def help
end

def about
flash[:notice] = "Testing The Flash - he won't escape this time!"
end
end
