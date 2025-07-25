ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"
require "minitest/reporters"
Minitest::Reporters.use!

module ActiveSupport
  class TestCase
    # 指定のワーカー数でテストを並列実行する
    parallelize(workers: :number_of_processors)
    # test/fixtures/*.yml にあるすべての fixture をセットアップする
    fixtures :all
    # （すべてのテストで使うその他のヘルパーメソッドは省略）
  end
end


