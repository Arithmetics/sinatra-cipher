require 'sinatra'
#require 'sinatra/reloader'


def cipher(str, shift)
  arr = str.split('')
  shift.times do
    arr.map! do |x|
      if x == "z"
        x = "a"
      elsif (/[a-zA-Z]/) === x
        x = x.next
      else
        x = x
      end
    end
  end
  arr.join('')
end


get '/' do
  entry = params['entry'].to_s
  shift = params['shift'].to_i
  code = cipher(entry, shift)
  erb :index, :locals => {:code => code}
end
