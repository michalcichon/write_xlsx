# -*- coding: utf-8 -*-
require 'helper'
require 'write_xlsx'

class TestWriteLegacyDrawing < Test::Unit::TestCase
  def setup
    @workbook = WriteXLSX.new
    @worksheet = @workbook.add_worksheet('')
  end

  def test_write_legacy_drawing
    @worksheet.instance_variable_set(:@has_comments, true)
    @worksheet.__send__('write_legacy_drawing')
    result = @worksheet.instance_variable_get(:@writer).string
    expected = '<legacyDrawing r:id="rId1" />'
    assert_equal(expected, result)
  end
end
