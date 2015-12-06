require 'test_helper'

class OshiriTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Oshiri::VERSION
  end

  def test_reverse_truncate
    word = 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'

    assert_equal '...aborum.', word.reverse_truncate(10)
    assert_equal '...aborum.', word.oshiri(10)
  end

  def test_reverse_truncate_multibyte
    word = '人目を気にしてブログに書きたいことを書けなくなった。もしくは、多くの人のウケやアクセスアップを狙うことしか書けなくなった。他人にとって有用ではない事は書きづらくなった。そんな事はないだろうか？'

    assert_equal '...ないだろうか？', word.reverse_truncate(10)
    assert_equal '...ないだろうか？', word.oshiri(10)
  end
end
