class Subcategory < Jekyll::Generator
	priority :highest

  def generate(site)
		site.posts.docs.each { |post|
			subcategory = post.data["subcategory"]

		  if subcategory
		  	post.data["categories"].push(subcategory)
		  	site.categories[subcategory].push(post)
		  end
		}
	end
end