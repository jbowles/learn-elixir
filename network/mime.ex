defmodule MimeTypes do
  HTTPotion.start
  HTTPotion.Response[body: body] = HTTPotion.get "http://svn.apache.org/repos/asf/httpd/httpd/trunk/docs/conf/mime.types"

  #Regex.scan(~r/\w+/, s)
  Enum.each String.split(body, ~r/\n/), fn (line) ->
    unless line == "" or line =~ ~r/^#/ do
      [ mimetype | _exts ] = String.split(line)

      def is_valid?(unquote(mimetype)), do: true
    end
  end

  def is_valid?(_mimetype), do: false
end

MimeTypes.is_valid?("application/vnd.exn") #=> false
MimeTypes.is_valid?("application/json")
