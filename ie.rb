require 'win32ole'
require 'pry'

ie = WIN32OLE.new('InternetExplorer.Application')
ie.Navigate('https://google.co.jp/')
ie.Visible = true
while ie.busy
  sleep 1
end
q = ie.document.all.Item('q')
q.Value = 'Ruby'
btnG = ie.document.all.Item('btnG')
binding.pry
btnG.click()
