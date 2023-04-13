//
//  RecipeModel.swift
//  Kitchen
//
//  Created by RAJVI K CHAVDA on 05/04/23.
//

import Foundation
enum Category: String, CaseIterable, Identifiable{
    var id: String {self.rawValue}
    
    case breakfasts = "Berakfast"
    case supe = "Supe"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snck = "snck"
    case drink = "Drink"
    
}
struct Recipe: Identifiable{
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingridiants: String
    let direction: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(
            
            name: "Dutch Pancakes", image: "https://recipes-api.getcracking.ca/sites/default/files/styles/1440x450/public/recipes/banners/banner_1.jpg?itok=edl-STBK", description: "These Dutch Pancakes are like crepes, thin pancakes that can be enjoyed on their own or rolled around other delicious ingredients.Whisk together eggs and sugar in a large bowl. Whisk in flour, milk and oil. Ingredients can also be combined in a blender and processed just until blended.For each pancake, pour 3 to 4 tbsp (45 to 60 mL) batter into a greased crepe pan or small (8-inch/20cm) frying pan, swirling it over bottom of pan to cover completely. Cook over medium heat until bottom of pancake is lightly browned. Flip over to cook other side briefly. Keep pancakes warm while cooking remaining batter.", ingridiants: "4 eggs , ¼ cup sugar ,2 cups all-purpose flour ,4 cups milk,¼ cup oil,maple syrup", direction: "Batter can be made ahead a couple of hours and refrigerated", category: "Berakfast", datePublished:"2023-11-4", url: "https://www.getcracking.ca/recipes/dutch-pancakes"
              
            ),
        Recipe(
            
            name: "Grilled Cheese and Tomato Soup", image: "https://whatsyourfoodstory.ca/wp-content/uploads/grilled-cheese-and-tomato.png", description: "Heat a nonreactive pot or enameled dutch oven over medium heat. Add butter then add chopped onions. Sauté 10-12 minutes, stirring occasionally, until softened and golden. Add minced garlic and sauté 1 minute until fragrant. Add crushed tomatoes with their juice, chicken stock, chopped basil, sugar (or add sugar to taste), and black pepper. Stir together and bring to a boil then reduce heat, partially cover with lid and simmer for 10 minutes. You can leave your soup with a chunky consistency, but if you like a blended/creamy soup, use an immersion blender to blend the soup in the pot to desired consistency or transfer to a blender in batches and blend until smooth (being careful not to over-fill the blender with hot liquid), then return blended soup to the pot over medium heat.Add 1/2 cup heavy cream, 1/3 cup freshly grated parmesan cheese and return to a simmer. Season to taste with salt and pepper if needed and turn off the heat. Ladle into warm bowls and top with more parmesan and chopped fresh basil. Serve with whole grain grilled cheese.", ingridiants: "4 Tbsp unsalted butter, 2 yellow onions, (3 cups finely chopped) ,3 garlic cloves, (1 Tbsp minced) ,56 oz crushed tomatoes, (two, 28-oz cans) with their juice, preferably San Marzano, 2 cups chicken stock,1/4 cup chopped fresh basil, plus more to serve, 1 Tbsp sugar, or added to taste,1/2 tsp black pepper, or to taste ,1/2 cup heavy whipping cream, or to taste to combat acidity ,1/3 cup parmesan cheese, freshly grated, plus more to serve", direction: "Batter can be made ahead a couple of hours and refrigerated", category: "Supe", datePublished:"2023-11-4", url: "https://whatsyourfoodstory.ca/grilled-cheese-and-tomato-soup/?gclid=CjwKCAjwrdmhBhBBEiwA4Hx5gyrgWLst8AywO4O9WUn99oELBKufqVJGV-VK-BoZTxvKsG4THM6gYhoCdckQAvD_BwE"
              
            ),
        Recipe(
            
            name: "Broccoli ", image: "https://cdn.loveandlemons.com/wp-content/uploads/2019/05/broccoli-salad-recipe1.jpg", description: "Broccoli salad is a classic summer cookout dish, but the traditional recipe is loaded up with sugar, ample mayo, bacon, and cheese, The dressing is delicious, but smoky, sweet/salty tamari almonds and pepitas really steal the show here. Not only do they add a wonderful crunch to this salad, but they also bring richness and smoky flavor, so they’re the perfect nutritious substitute for bacon and cheese. A full pound of broccoli, chewy dried cranberries, and flecks of red onion round out this recipe – it’s SO fresh, healthy, and easy to make!", ingridiants: "4 eggs , ¼ cup sugar ,2 cups all-purpose flour ,4 cups milk,¼ cup oil,maple syrup", direction: "Batter can be made ahead a couple of hours and refrigerated", category: "Salad", datePublished:"2023-11-4", url: "https://www.getcracking.ca/recipes/dutch-pancakes"
              
            ),
        Recipe(
            
            name: "Canadian Blue Cheese and Spinach Dip", image: "https://www.gaylea.com/wp-content/uploads/2017/11/canadian-blue-cheese-and-spinach-dip_HEADER.jpg", description: "The next time you have the gang over for game night, wow them with your new rendition of the always popular, but often predictable, spinach dip. Unexpected ingredients such as Blue Cheese or Horseradish Cheddar and hot sauce transform a classic into a dip with zest and zing. Extra dip is also terrific as a spread for roast beef sandwiches or burgers. In a large skillet, melt butter over medium heat; add onions and cook, stirring frequently for 5 minutes or until onions are tender. \n Cover; reduce heat to low and cook, stirring occasionally, for 15 minutes or until golden brown. \n Increase heat to medium; add spinach and stir 2 to 3 minutes; remove from heat. In a medium bowl, combine Canadian Blue Cheese, sour cream and mayonnaise; mash with back of wooden spoon until cheese pieces are desired consistency.Stir in onion mixture, salt and pepper.Cover and refrigerate for 1 hour or up to 1 day.", ingridiants: "1 tbsp (15mL) GAY LEA - Salted Butter, \n 1 1/4 cups (300mL) onions, or shallots, thinly sliced\n 4 cups (1L) spinach, coarsely chopped\n 3/4 cup (175mL) blue cheese, Canadian, crumbled", direction: "Batter can be made ahead a couple of hours and refrigerated", category: "Appetizer", datePublished:"2023-11-4", url: "https://www.getcracking.ca/recipes/dutch-pancakes"
              
            ),
        Recipe(
            
            name: "Chole Bhature", image: "https://www.vegrecipesofindia.com/wp-content/uploads/2013/06/chole-bhature-recipe32-1.jpg", description: "In a large skillet, heat oil over medium-high heat; saute onion until tender, 2-4 minutes. Add garlic, ginger and dry seasonings; cook and stir 1 minute. Stir in tomatoes; transfer to a 3- or 4-qt. slow cooker. Stir in chickpeas, potato and stock. Cook, covered, on low until potato is tender and flavors are blended, 6-8 hours.Stir in lime juice; sprinkle with cilantro. Serve with rice and, if desired, red onion and lime wedges.", ingridiants: "1 tablespoon canola oil\n 1 medium onion, chopped \n 2 teaspoons minced fresh gingerroot \n 2 teaspoons ground coriander \n 1 teaspoon garam masala", direction: "Batter can be made ahead a couple of hours and refrigerated", category: "Main", datePublished:"2023-11-4", url: "https://www.tasteofhome.com/recipes/chickpea-potato-curry/"
              
            ),
        Recipe(
            
            name: "TURMERIC POTATOES", image: "https://www.veggioke.com/wp-content/uploads/2020/02/tumericpotatoes-angled-420.jpg", description: "Prepare the vegetables. Cut the potatoes into cubes, quarter onion and chop the garlic and bell pepper.  Heat the cooking oil in a large frying pan and fry garlic and onion until golden. Add the ground turmeric and curry and fry for a short while. Add the potatoes and season with salt and rosemary. Let the dish simmer with a lid until the potatoes are tender, then add the bell pepper.Stir well and cover for a few minutes and serve.", ingridiants: "4 medium sized Potatoes , 4 clovesGarlic , 1 red Onion, 1/2 Bell pepper", direction: "Batter can be made ahead a couple of hours and refrigerated", category: "Side", datePublished:"2023-11-4", url: "https://www.tasteofhome.com/recipes/chickpea-potato-curry/"
              
            ),
        Recipe(
            
            name: "Black Forest Thumbprint Cookies", image: "https://www.gaylea.com/wp-content/uploads/2017/11/black-forest-sb_header.jpg", description: "Beat the butter with the sugar and vanilla until fluffy. Stir the flour with the cocoa and salt in a separate bowl. Beat the flour mixture into the butter mixture just until combined. Roll 1 tbsp (15 mL) portions of the dough into balls. Arrange balls 2 inches (5 cm) apart on parchment paper-lined baking sheets. Use the end of a large wooden spoon to create an indent in each ball; chill for 30 minutes. Preheat the oven to 325°F (160°C). Bake in batches for 20 minutes or until set. Remove from the oven and immediately reinforce the indents if needed. Cool completely on a rack.", ingridiants: "1 cup (250mL) GAY LEA - Unsalted Butter, 2/3 cup (150mL) instant dissolving sugar, 1 tsp (5mL) vanilla extract , 1 3/4 cups (425mL) all purpose flour, 1/2 cup (125mL) unsweetened cocoa powder, 1/2 tsp (2mL) salt, 1/2 cup (125mL) cherry jam or pie filling", direction: "Batter can be made ahead a couple of hours and refrigerated", category: "Dessert", datePublished:"2023-11-4", url: "https://www.tasteofhome.com/recipes/chickpea-potato-curry/"
              
            ),
        Recipe(
            
            name: "Buffalo cauliflower", image: "https://img.delicious.com.au/eMOmpydT/w759-h506-cfill/del/2015/09/buffalo-cauliflower-23127-2.jpg", description: "In a large saucepan of lightly salted boiling water, cook the cauliflower florets for 5–6 minutes, or until just tender. Drain in a colander, refresh under cold running water, then set aside to cool.. Preheat the oven to 325°F (160°C). Bake in batches for 20 minutes or until set. Remove from the oven and immediately reinforce the indents if needed. Cool completely on a rack. Fry the crumbed cauliflower florets in small batches for 3–4 minutes each time, or until golden brown and crisp, taking care that they don’t clump together. Remove with a slotted spoon and drain on paper towel. Once all the florets have been deep-fried, toss them in the buttery hot sauce and serve immediately, with the celery sticks and blue cheese sour cream sauce.", ingridiants: "1 cup (250mL) GAY LEA - Unsalted Butter, 2/3 cup (150mL) instant dissolving sugar, 1 tsp (5mL) vanilla extract , 1 3/4 cups (425mL) all purpose flour, 1/2 cup (125mL) unsweetened cocoa powder, 1/2 tsp (2mL) salt, 1/2 cup (125mL) cherry jam or pie filling", direction: "Batter can be made ahead a couple of hours and refrigerated", category: "snck", datePublished:"2023-11-4", url: "https://www.tasteofhome.com/recipes/chickpea-potato-curry/"
              
            ),
        Recipe(
            
            name: "Classic Mojito", image: "https://www.acouplecooks.com/wp-content/uploads/2019/11/Mojito-Recipe-051.jpg", description: "Place the mint leaves in the bottom of a cocktail shaker. If you don’t have one, you can use a large metal cup or bowl.Using a wooden cocktail muddler or unfinished wooden spoon, gently mash the mint a few times to release the juices. Do not mash the mint with a lot of force! The key to muddling is a light touch..", ingridiants: "Fresh mint \n Lime juice\n Simple syrup\n Soda water", direction: "Batter can be made ahead a couple of hours and refrigerated", category: "Drink", datePublished:"2023-11-4", url: "https://www.tasteofhome.com/recipes/chickpea-potato-curry/"
              
            )
        
    ]
}

