# -*- coding: utf-8 -*-
require 'helper'
require 'write_xlsx'

class TestWriteSheetView4 < Test::Unit::TestCase
  def setup
    @workbook = WriteXLSX.new
    @worksheet = @workbook.add_worksheet('')
  end

  def test_write_sheet_views_split_panes_15_0_1_0
    @worksheet.select
    @worksheet.split_panes(15, 0, 1, 0)
    @worksheet.__send__('write_sheet_views')
    result = @worksheet.instance_variable_get(:@writer).string
    expected = '<sheetViews><sheetView tabSelected="1" workbookViewId="0"><pane ySplit="600" topLeftCell="A2" /><selection pane="bottomLeft" activeCell="A2" sqref="A2" /></sheetView></sheetViews>'
    assert_equal(expected, result)
  end

  def test_write_sheet_views_split_panes_30_0_2_0
    @worksheet.select
    @worksheet.split_panes(30, 0, 2, 0)
    @worksheet.__send__('write_sheet_views')
    result = @worksheet.instance_variable_get(:@writer).string
    expected = '<sheetViews><sheetView tabSelected="1" workbookViewId="0"><pane ySplit="900" topLeftCell="A3" /><selection pane="bottomLeft" activeCell="A3" sqref="A3" /></sheetView></sheetViews>'
    assert_equal(expected, result)
  end

  def test_write_sheet_views_split_panes_105_0_7_0
    @worksheet.select
    @worksheet.split_panes(105, 0, 7, 0)
    @worksheet.__send__('write_sheet_views')
    result = @worksheet.instance_variable_get(:@writer).string
    expected = '<sheetViews><sheetView tabSelected="1" workbookViewId="0"><pane ySplit="2400" topLeftCell="A8" /><selection pane="bottomLeft" activeCell="A8" sqref="A8" /></sheetView></sheetViews>'
    assert_equal(expected, result)
  end

  def test_write_sheet_views_split_panes_0_843_0_1
    @worksheet.select
    @worksheet.split_panes(0, 8.43, 0, 1)
    @worksheet.__send__('write_sheet_views')
    result = @worksheet.instance_variable_get(:@writer).string
    expected = '<sheetViews><sheetView tabSelected="1" workbookViewId="0"><pane xSplit="1350" topLeftCell="B1" /><selection pane="topRight" activeCell="B1" sqref="B1" /></sheetView></sheetViews>'
    assert_equal(expected, result)
  end

  def test_write_sheet_views_split_panes_0_1757_0_2
    @worksheet.select
    @worksheet.split_panes(0, 17.57, 0, 2)
    @worksheet.__send__('write_sheet_views')
    result = @worksheet.instance_variable_get(:@writer).string
    expected = '<sheetViews><sheetView tabSelected="1" workbookViewId="0"><pane xSplit="2310" topLeftCell="C1" /><selection pane="topRight" activeCell="C1" sqref="C1" /></sheetView></sheetViews>'
    assert_equal(expected, result)
  end

  def test_write_sheet_views_split_panes_0_45_0_5
    @worksheet.select
    @worksheet.split_panes(0, 45, 0, 5)
    @worksheet.__send__('write_sheet_views')
    result = @worksheet.instance_variable_get(:@writer).string
    expected = '<sheetViews><sheetView tabSelected="1" workbookViewId="0"><pane xSplit="5190" topLeftCell="F1" /><selection pane="topRight" activeCell="F1" sqref="F1" /></sheetView></sheetViews>'
    assert_equal(expected, result)
  end

  def test_write_sheet_views_split_panes_15_843_1_1
    @worksheet.select
    @worksheet.split_panes(15, 8.43, 1, 1)
    @worksheet.__send__('write_sheet_views')
    result = @worksheet.instance_variable_get(:@writer).string
    expected = '<sheetViews><sheetView tabSelected="1" workbookViewId="0"><pane xSplit="1350" ySplit="600" topLeftCell="B2" /><selection pane="topRight" activeCell="B1" sqref="B1" /><selection pane="bottomLeft" activeCell="A2" sqref="A2" /><selection pane="bottomRight" activeCell="B2" sqref="B2" /></sheetView></sheetViews>'
    assert_equal(expected, result)
  end

  def test_write_sheet_views_split_panes_45_5414_3_6
    @worksheet.select
    @worksheet.split_panes(45, 54.14, 3, 6)
    @worksheet.__send__('write_sheet_views')
    result = @worksheet.instance_variable_get(:@writer).string
    expected = '<sheetViews><sheetView tabSelected="1" workbookViewId="0"><pane xSplit="6150" ySplit="1200" topLeftCell="G4" /><selection pane="topRight" activeCell="G1" sqref="G1" /><selection pane="bottomLeft" activeCell="A4" sqref="A4" /><selection pane="bottomRight" activeCell="G4" sqref="G4" /></sheetView></sheetViews>'
    assert_equal(expected, result)
  end
end
