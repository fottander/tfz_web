News.delete_all

News.create(title: "Awesome travel insights", content: "Let me tell you about my trip to British Columbia")
News.create(title: "Great skiing in Aspen", content: "Let me tell you about my trip to Aspen")
News.create(title: "Follow John to the best place in Europe", content: "Europe is now better than ever")

puts "Created #{News.count} news"
