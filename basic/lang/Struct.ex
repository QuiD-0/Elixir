defmodule UserName do
  defstruct [:first_name, :last_name]

  def new(first_name, last_name) when is_binary(first_name) and is_binary(last_name) do
    %UserName{first_name: first_name, last_name: last_name}
  end

  def new(first_name, last_name) do
    raise ArgumentError, "First and last name must be strings"
  end
end

defmodule User do
  defstruct [:name, :age, :email, :admin]

  def new(name, age, email)
      when is_struct(name, UserName) and is_integer(age) and is_binary(email) do
    %User{name: name, age: age, email: email, admin: false}
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
end

User.new(UserName.new("John", "Doe"), 30, "email")
|> IO.inspect()
|> User.rename(UserName.new("new", "name"))
|> IO.inspect()
|> User.make_admin()
|> IO.inspect()
|> User.is_admin?()
|> IO.inspect()
