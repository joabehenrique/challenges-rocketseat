defmodule GenReport.ParserTest do
  use ExUnit.Case

  alias Parser

  describe "parse_file/1" do
    test "parses the file" do
      file_name = "gen_report_test"

      response =
        file_name
        |> Parser.parse_file()
        |> Enum.member?(["Daniele", 7, 29, "abril", 2018])

      assert response == true
    end
  end
end
