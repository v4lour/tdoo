require 'terminal-table'
require 'rainbow'
require 'time'

module Tdoo
  module Format
    class Pretty
      def initialize
        @table = Terminal::Table.new headings: %w(project id name created completed)
      end
      
      def format_todo(project, index, task, created)
        row = []
        row << project.color(:blue)
        row << index
        row << task.color(:red)
        row << as_date(created).color(:red)
        row << ''
        @table << row
      end

      def format_done(project, index, task, created, completed)
        row = []
        row << project.color(:blue)
        row << index
        row << task.color(:green)
        row << as_date(created).color(:green)
        row << as_date(completed).color(:green)
        @table << row
      end

      def after
        puts @table.to_s
      end

      private
      def as_date(string)
        Time.parse(string).strftime("%Y-%m-%d %H:%M:%S")
      end
    end
  end
end