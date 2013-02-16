# -*- coding: utf-8 -*-
require 'helper'
require 'write_xlsx/package/table'

class TestTableWriteXmlDeclaration < Test::Unit::TestCase
  def setup
    workbook = WriteXLSX.new(StringIO.new)
    @worksheet = workbook.add_worksheet
  end

  def test_table_write_xml_declaration
    expected = %Q{<?xml version="1.0" encoding="UTF-8" standalone="yes"?>\n}

    table = Writexlsx::Package::Table.new(@worksheet, 0, 1, 1, 2, 2)
    table.__send__(:write_xml_declaration)
    result = table.instance_variable_get(:@writer).string

    assert_equal(expected, result)
  end
end
