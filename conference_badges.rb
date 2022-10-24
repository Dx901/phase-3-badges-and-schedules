# Write your code here.
def badge_maker (name)
    "Hello, my name is #{name}."
end

def batch_badge_creator (attendance)
    array=[]
    attendance.each {|name|array<<badge_maker(name)}
    array
end

def assign_rooms(attendance)
    array = []
    attendance.each_with_index do |name, index|
        array << "Hello, #{name}! You'll be assigned to room #{index+1}!"
    end
    array

end

def printer(attendance)
    batch_badge_creator(attendance).each{|names| puts names}
    assign_rooms(attendance).each { |room|puts room}
end