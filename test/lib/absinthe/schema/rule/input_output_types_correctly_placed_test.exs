defmodule Absinthe.Schema.Rule.InputOuputTypesCorrectlyPlacedTest do
  use Absinthe.Case, async: true
  use SupportSchemas

  alias Absinthe.Schema.Rule

  context "rule" do

    it "is enforced with input types on arguments" do
      assert_schema_error("invalid_input_types",
                          [
                            %{rule: Rule.InputOuputTypesCorrectlyPlaced, data: %{argument: :invalid_arg, struct: Absinthe.Type.Object, type: :user}},
                            %{rule: Rule.InputOuputTypesCorrectlyPlaced, data: %{field: :blah, parent: Absinthe.Type.Object, struct: Absinthe.Type.InputObject, type: :input}},
                          ]
      )
    end

  end
end
