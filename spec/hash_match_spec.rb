# frozen_string_literal: true

require 'json'
require 'active_support/all'

RSpec.describe 'Sample', 'hash' do
  context '表記が違うもの同士の場合' do
    it '比較しても一致する' do
      exact = JSON.parse('{"name":"tanaka","age":19}')

      # eqだと一致しない
      expect({ name: 'tanaka', 'age': 19 }).not_to eq exact
      # stringify_keysすると一致する
      expect({ name: 'tanaka', 'age': 19 }.stringify_keys).to eq exact
    end
  end
end
