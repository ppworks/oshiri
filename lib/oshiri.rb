require 'active_support/core_ext/string/filters'
require "oshiri/version"

module Oshiri
  def reverse_truncate(length, options = {})
    reverse.truncate(length, options).reverse
  end

  alias_method :oshiri, :reverse_truncate
end

String.include Oshiri
