# Class with methods

class MyClass
  def saysomething
    puts("hello")
  end
end

ob = MyClass.new
ob.saysomething

# --- Dog and Cat classes

class Dog
  def set_name(aName)
    @myname = aName
  end

  def get_name
    return @myname
  end

  def talk
    return 'woof!'
  end
end

class Cat
  def set_name(aName)
    @myname = aName
  end

  def get_name
    return @myname
  end

  def talk
    return 'meow!'
  end
end

# --- Create instances of each
mydog = Dog.new
yourdog = Dog.new
mycat = Cat.new
yourcat = Cat.new
someotherdog = Dog.new

# --- Name them
mydog.set_name('Fido')
yourdog.set_name('Bonzo')
mycat.set_name('Tiddles')
yourcat.set_name('Flossy')

# --- Get names and display them
p(mydog.get_name)
p(yourdog.get_name)
p(mycat.get_name)
p(yourcat.get_name)
# --- what happens if we try to p() on unset variable?
p(someotherdog.get_name) # => nil

# --- chain together method calls
p(mydog.get_name.class)        # => String
p(someotherdog.get_name.class) # => NilClass
