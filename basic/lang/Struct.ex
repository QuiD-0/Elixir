defmodule User do
  defstruct name: "",
            age: 0,
            email: "",
            admin: false

  def new(name, age, email) do
    %User{name: name, age: age, email: email}
  end

  def rename(user, new_name) do
    %{user | name: new_name}
  end

  def make_admin(user) do
    %{user | admin: true}
  end

  def is_admin?(user) do
    user.admin
  end
end

User.new("quid", 10, "")
|> IO.inspect()
|> User.rename("quid2")
|> IO.inspect()
|> User.make_admin()
|> IO.inspect()
|> User.is_admin?()
|> IO.inspect()
