class Student

    # attr_accessor allows you to access instance variable without creating getters and setters
    # each instance variable
    attr_accessor :first_name, :last_name, :email, :password
    # attr_reader use only to read instance like getters
    attr_reader :username

    @first_name
    @last_name
    @email
    @username
    @password

    def initialize(first_name, last_name, username, email, password)
        @first_name = first_name
        @last_name = last_name
        @email = email
        @password = password
        @username = username
    end

    # getters
    # def first_name(name)
    #     @first_name = name
    # end
    # For setter this def will be like this
    # def first_name=(name)
    #     @first_name = name
    # end

    # def set_username
    #     @username = "tarun-90"
    # end

    def to_s
        "First name: #{@first_name} #{last_name}"
    end
end


# tarun = Student.new
# puts tarun
# getters
# tarun.first_name("Tarun")

# to work it as a setter you should write like this
# tarun.first_name = "Tarun"
# puts tarun

# attr_accessor
# tarun.first_name = "Tarun"
# tarun.last_name = "Kantiwal"
# tarun.email = "29kantiwaltarun@gmail.com"
# tarun.username = "tarun-90"
# tarun.set_username

# puts tarun.first_name
# puts tarun.last_name
# puts tarun.email
# puts tarun.username

tarun = Student.new("Tarun", "Kantiwal", "tarun-90", "coe17b031@iiitdm.ac.in", "password1")
tarun1 = Student.new("Tarun1", "Kantiwal1", "tarun-91", "coe17b031@iiitdm.ac.in", "password2")

puts tarun
puts tarun1

tarun.last_name = tarun1.last_name
puts tarun