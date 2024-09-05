defmodule UserName do
  defstruct [:first_name, :last_name]

  def new(first_name, last_name) when is_binary(first_name) and is_binary(last_name) do
    %UserName{first_name: first_name, last_name: last_name}
  end

  def new(_, _) do
    raise ArgumentError, "First and last name must be strings"
  end
end

defmodule User do
  defstruct [:name, :age, :email, :admin]

  def new(name, age, email)
      when is_struct(name, UserName) and is_integer(age) and is_binary(email) do
    %User{name: name, age: age, email: email, admin: false}
  end

  def new(_, _, _) do
    raise ArgumentError, "Invalid arguments"
  end

  def rename(user, %{first_name: first, last_name: last}) do
    %{user | name: UserName.new(first, last)}
  end

  def make_admin(user) do
    %{user | admin: true}
  end

  def is_admin?(user) do
    user.admin
  end

  def update_name(user, name) when is_binary(name) do
    put_in(user.name.first_name, name)
  end
end

User.new(UserName.new("John", "Doe"), 30, "email")
|> IO.inspect()
|> User.rename(UserName.new("new", "name"))
|> IO.inspect()
|> User.make_admin()
|> IO.inspect()
|> User.update_name("Jane")
|> IO.inspect()
|> User.is_admin?()
|> IO.inspect()

defmodule Subscriber do
  defstruct name: "default", paid: false, over_18: false

  def new(name, paid, over_18)
      when is_binary(name) and is_boolean(paid) and is_boolean(over_18) do
    %Subscriber{name: name, paid: paid, over_18: over_18}
  end

  def subscribe(subscriber = %Subscriber{}) do
    %{subscriber | paid: true}
  end

  def print_name(%Subscriber{name: name}) when name != "" do
    IO.puts(name)
  end
end

Subscriber.new("John", false, false)
|> IO.inspect()
|> Subscriber.subscribe()
|> IO.inspect()
|> Subscriber.print_name()
