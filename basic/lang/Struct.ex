defmodule UserName do
  @type t :: %UserName{first_name: String.t(), last_name: String.t()}
  defstruct [:first_name, :last_name]

  def new(first_name, last_name) do
    %UserName{first_name: first_name, last_name: last_name}
  end
end

defmodule User do
  @type t :: %User{
          name: %UserName{},
          age: non_neg_integer(),
          email: String.t(),
          admin: boolean()
        }
  defstruct [:name, :age, :email, :admin]

  def new(name, age, email) do
    %User{name: name, age: age, email: email, admin: false}
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

User.new(UserName.new("test", "name"), 10, "test@mail.com")
|> IO.inspect()
|> User.rename(UserName.new("new", "name"))
|> IO.inspect()
|> User.make_admin()
|> IO.inspect()
|> User.is_admin?()
|> IO.inspect()
