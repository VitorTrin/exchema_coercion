defmodule ExchemaCoercion.Coercions do
  alias __MODULE__, as: C

  @doc """
  All built-in coercions
  """
  def all do
    [
      &C.Boolean.from_string/3,
      &C.Boolean.from_int/3,
      &C.DateAndTime.from_iso8601/3,
      &C.DateAndTime.from_epoch/3,
      &C.DateAndTime.without_assumptions/3,
      &C.DateAndTime.with_assumptions/3,
      &C.Numeric.from_string/3,
      &C.Numeric.truncate/3,
      &C.Numeric.integer_as_float/3,
      &C.String.to_string/3,
      &C.String.to_atom/3,
      &C.List.children/3,
      &C.OneOf.one_of/3,
      &C.Optional.optional/3,
      &C.Struct.to_struct/3
    ]
  end
end
