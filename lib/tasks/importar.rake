namespace :importar do
  desc "Importar datos desde google spreadsheet"
  task google: :environment do
  
  require 'google_drive'
  
  session = GoogleDrive.login("mauro.otonelli@gmail.com", "password")
  spreadsheet = session.spreadsheet_by_key("0As85fqOqcuxjdDhER2dlSTJ1VmpvMWEzdlBOM1F6bXc").worksheets[0]
  (1..spreadsheet.num_rows).each do |i|
  date = spreadsheet[i, 1]
  user = spreadsheet[i, 2]
  body = spreadsheet[i, 3]
  link = spreadsheet[i, 4]
  tweet = Tweet.create!({
  :date => date,
  :user => user,
  :body => body,
  :link => link
  })
  
  end
  
  end

end
