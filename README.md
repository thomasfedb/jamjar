# JamJar

JamJar dynamically creates ActiveRecord models, backed by in-memory SQLite, to help you test your ActiveRecord extensions.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "jamjar"
```

And then execute:

    $ bundle

## Usage

To generate a new model, simply call:

```ruby
JamJar.model
```

You can pass a block, which will be evaluated in the model's class context:

```ruby
model = JamJar.model do
  def self.foo
    "bar"
  end
end

model.foo #=> "bar"
```

You can add columns to your model's table with `column`.

```ruby
JamJar.model do
  column :foo, :string
end
```

## Contributing

1. Fork it
2. Create a branch (`git checkout -b super-foo`)
3. Add your feature and specs.
4. Commit your changes (`git commit -am 'Extra-super foo-matic.'`)
5. Push to the branch (`git push origin super-foo`)
6. Create new Pull Request
