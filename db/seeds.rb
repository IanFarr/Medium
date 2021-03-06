# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

demoUser = User.create!(full_name: 'DemoUser', email: 'demo@demo.com', password: 'demopassword')

user1 = User.create!(full_name: 'Ian Farr', email: 'user1@demo.com', password: '123456')
user2 = User.create!(full_name: 'Ian\'s Mom', email: 'user2@demo.com', password: '123456')
user3 = User.create!(full_name: 'Totally Not Ian', email: 'user3@demo.com', password: '123456')
user4 = User.create!(full_name: 'Ian\'s Old Co-workers', email: 'user4@demo.com', password: '123456')
user5 = User.create!(full_name: 'Kanye West', email: 'user5@demo.com', password: '123456')



story1 = Story.create!(
  title: 'Is It Too Early to Make Ian The Boss?',
  body: "Probably, ya. \
  

  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus \
  interdum nunc nibh, convallis placerat ipsum posuere ac. Suspendisse maximus \
  leo eget lacus volutpat fringilla. Sed a viverra arcu, sed porttitor leo. \
  Integer molestie risus quis metus condimentum tempor. Proin euismod \
  ultrices neque, a dictum mauris iaculis eu. Aliquam nec mauris risus. \
  Curabitur tristique tempus erat, et gravida dolor tincidunt nec. Fusce \
  pellentesque nec nibh quis congue. Aliquam tristique semper mi, eu laoreet \
  nunc tincidunt eget. Nunc lectus leo, tincidunt id dapibus sit amet, posuere \
  a magna. Vestibulum id lorem eget metus mollis sodales. Sed sit amet enim et \
  nunc blandit lobortis non et libero. Etiam turpis purus, placerat vel blandit \
  non, varius eget ligula. Donec scelerisque libero vel nisl ultrices, a \
  sodales justo tempus. Fusce vulputate suscipit elit at posuere. Duis in \
  dignissim enim, eu euismod diam.\
  
  Morbi sollicitudin accumsan laoreet. Duis consectetur cursus consequat. \
  Phasellus massa metus, feugiat id dui et, finibus sollicitudin magna. Donec \
  dignissim dapibus est in tempor. Quisque finibus, purus sit amet finibus \
  eleifend, nibh tortor volutpat quam, in molestie erat dolor nec elit. Nullam \
  tempor, mauris et sagittis tempus, mi dolor iaculis risus, eu aliquam elit \
  dolor laoreet risus. Suspendisse lorem diam, maximus at malesuada ut, rutrum \
  vitae tellus. Integer tortor magna, tristique vitae ipsum quis, vestibulum \
  laoreet arcu. Duis dignissim libero eget eros euismod dictum. Nulla at \
  convallis lacus. Interdum et malesuada fames ac ante ipsum primis in \
  faucibus. Donec maximus, diam sed viverra venenatis, dolor metus fringilla \
  libero, in tristique mauris ex id turpis. Duis lacinia ultrices viverra. \
  Fusce id consequat mauris.\
  
  Ut ac turpis mattis, laoreet nisl at, facilisis metus. Vestibulum odio \
  tellus, dapibus sollicitudin lacinia sit amet, finibus ullamcorper augue. \
  Etiam ac porttitor nisi. Pellentesque ligula felis, interdum eget tristique \
  et, sagittis quis lacus. Sed facilisis lacinia porttitor. Etiam vel ante ut \
  tellus scelerisque vulputate id auctor purus. Sed facilisis auctor velit \
  eget porta. Aenean convallis sapien nibh, ac sagittis mauris eleifend vitae. \
  Aliquam sit amet ex nisl.\
  
  Nulla pulvinar gravida orci quis mollis. In molestie quis orci at tristique. \
  Etiam dolor orci, maximus sed quam eu, eleifend varius felis. Ut sagittis \
  sit amet odio sed tristique. Lorem ipsum dolor sit amet, consectetur \
  adipiscing elit. Aenean ut leo odio. Nunc dui ante, vestibulum nec metus \
  sed, iaculis blandit nulla. Etiam facilisis, felis eget lacinia mollis, enim \
  libero pharetra purus, id blandit mauris enim nec dolor. Sed condimentum, \
  libero in ultricies vehicula, nulla arcu pretium neque, vitae volutpat neque \
  mauris a neque. Etiam id enim ex. Donec volutpat tincidunt felis, sit amet \
  tincidunt velit dictum sit amet. Aliquam in posuere sapien. Quisque sodales \
  erat quis ipsum varius, sit amet pellentesque erat laoreet.\
  
  Duis fringilla gravida laoreet. Vestibulum eget massa finibus est ullamcorper \
  feugiat. Suspendisse potenti. In consequat faucibus turpis quis placerat. \
  Aliquam eget mi fringilla diam posuere posuere. Donec iaculis, odio id \
  faucibus consectetur, ante leo aliquet massa, eget dignissim massa arcu ac \
  nunc. Donec sit amet blandit ipsum. Pellentesque sagittis facilisis lacus, \
  eget pulvinar enim luctus vitae. Etiam bibendum et lacus eget sollicitudin. \
  Maecenas purus diam, faucibus id ullamcorper sed, rutrum in sapien. Sed \
  gravida metus felis, ultrices ornare turpis ullamcorper ut. Ut tempor nunc id \
  diam lacinia fermentum. Cras pretium scelerisque felis, sit amet lacinia orci. \
  Aliquam accumsan erat id erat venenatis, a cursus metus iaculis. Nunc feugiat \
  erat iaculis lectus tempor, sit amet molestie erat rhoncus. Mauris lorem mi, \
  tempor a ultricies ac, molestie laoreet libero.",
  tags: ['story'],
  author: user3.full_name,
  author_id: user3.id,
  created_at: DateTime.now
)


require 'open-uri'

image = URI.open('https://medium-ian-farr-seeds.s3.us-west-1.amazonaws.com/book.jpg')
story1.photo.attach(io: File.open(image), filename: 'book.jpg')



story2 = Story.create!(
  title: 'We Miss Him So Much',
  body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus \
  interdum nunc nibh, convallis placerat ipsum posuere ac. Suspendisse maximus \
  leo eget lacus volutpat fringilla. Sed a viverra arcu, sed porttitor leo. \
  Integer molestie risus quis metus condimentum tempor. Proin euismod \
  ultrices neque, a dictum mauris iaculis eu. Aliquam nec mauris risus. \
  Curabitur tristique tempus erat, et gravida dolor tincidunt nec. Fusce \
  pellentesque nec nibh quis congue. Aliquam tristique semper mi, eu laoreet \
  nunc tincidunt eget. Nunc lectus leo, tincidunt id dapibus sit amet, posuere \
  a magna. Vestibulum id lorem eget metus mollis sodales. Sed sit amet enim et \
  nunc blandit lobortis non et libero. Etiam turpis purus, placerat vel blandit \
  non, varius eget ligula. Donec scelerisque libero vel nisl ultrices, a \
  sodales justo tempus. Fusce vulputate suscipit elit at posuere. Duis in \
  dignissim enim, eu euismod diam.\
  

  Morbi sollicitudin accumsan laoreet. Duis consectetur cursus consequat. \
  Phasellus massa metus, feugiat id dui et, finibus sollicitudin magna. Donec \
  dignissim dapibus est in tempor. Quisque finibus, purus sit amet finibus \
  eleifend, nibh tortor volutpat quam, in molestie erat dolor nec elit. Nullam \
  tempor, mauris et sagittis tempus, mi dolor iaculis risus, eu aliquam elit \
  dolor laoreet risus. Suspendisse lorem diam, maximus at malesuada ut, rutrum \
  vitae tellus. Integer tortor magna, tristique vitae ipsum quis, vestibulum \
  laoreet arcu. Duis dignissim libero eget eros euismod dictum. Nulla at \
  convallis lacus. Interdum et malesuada fames ac ante ipsum primis in \
  faucibus. Donec maximus, diam sed viverra venenatis, dolor metus fringilla \
  libero, in tristique mauris ex id turpis. Duis lacinia ultrices viverra. \
  Fusce id consequat mauris.\
  

  Ut ac turpis mattis, laoreet nisl at, facilisis metus. Vestibulum odio \
  tellus, dapibus sollicitudin lacinia sit amet, finibus ullamcorper augue. \
  Etiam ac porttitor nisi. Pellentesque ligula felis, interdum eget tristique \
  et, sagittis quis lacus. Sed facilisis lacinia porttitor. Etiam vel ante ut \
  tellus scelerisque vulputate id auctor purus. Sed facilisis auctor velit \
  eget porta. Aenean convallis sapien nibh, ac sagittis mauris eleifend vitae. \
  Aliquam sit amet ex nisl.\
  

  Nulla pulvinar gravida orci quis mollis. In molestie quis orci at tristique. \
  Etiam dolor orci, maximus sed quam eu, eleifend varius felis. Ut sagittis \
  sit amet odio sed tristique. Lorem ipsum dolor sit amet, consectetur \
  adipiscing elit. Aenean ut leo odio. Nunc dui ante, vestibulum nec metus \
  sed, iaculis blandit nulla. Etiam facilisis, felis eget lacinia mollis, enim \
  libero pharetra purus, id blandit mauris enim nec dolor. Sed condimentum, \
  libero in ultricies vehicula, nulla arcu pretium neque, vitae volutpat neque \
  mauris a neque. Etiam id enim ex. Donec volutpat tincidunt felis, sit amet \
  tincidunt velit dictum sit amet. Aliquam in posuere sapien. Quisque sodales \
  erat quis ipsum varius, sit amet pellentesque erat laoreet.\
  

  Duis fringilla gravida laoreet. Vestibulum eget massa finibus est ullamcorper \
  feugiat. Suspendisse potenti. In consequat faucibus turpis quis placerat. \
  Aliquam eget mi fringilla diam posuere posuere. Donec iaculis, odio id \
  faucibus consectetur, ante leo aliquet massa, eget dignissim massa arcu ac \
  nunc. Donec sit amet blandit ipsum. Pellentesque sagittis facilisis lacus, \
  eget pulvinar enim luctus vitae. Etiam bibendum et lacus eget sollicitudin. \
  Maecenas purus diam, faucibus id ullamcorper sed, rutrum in sapien. Sed \
  gravida metus felis, ultrices ornare turpis ullamcorper ut. Ut tempor nunc id \
  diam lacinia fermentum. Cras pretium scelerisque felis, sit amet lacinia orci. \
  Aliquam accumsan erat id erat venenatis, a cursus metus iaculis. Nunc feugiat \
  erat iaculis lectus tempor, sit amet molestie erat rhoncus. Mauris lorem mi, \
  tempor a ultricies ac, molestie laoreet libero.",
  tags: ['story'],
  author: user4.full_name,
  author_id: user4.id,
  created_at: DateTime.now
)

story3 = Story.create!(
  title: 'Why Would You Read Here?',
  body: "Is reading not thrilling enough? This guy is just going to sit on the \
  edge of a cliff and find out what Harry, Ron and Hermoine are up to? \
  

  Upon closer examination, I've realized that this man is on a laptop and is not in \
  fact reading. My bad. Makes total sense now. \
  

  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus \
  interdum nunc nibh, convallis placerat ipsum posuere ac. Suspendisse maximus \
  leo eget lacus volutpat fringilla. Sed a viverra arcu, sed porttitor leo. \
  Integer molestie risus quis metus condimentum tempor. Proin euismod \
  ultrices neque, a dictum mauris iaculis eu. Aliquam nec mauris risus. \
  Curabitur tristique tempus erat, et gravida dolor tincidunt nec. Fusce \
  pellentesque nec nibh quis congue. Aliquam tristique semper mi, eu laoreet \
  nunc tincidunt eget. Nunc lectus leo, tincidunt id dapibus sit amet, posuere \
  a magna. Vestibulum id lorem eget metus mollis sodales. Sed sit amet enim et \
  nunc blandit lobortis non et libero. Etiam turpis purus, placerat vel blandit \
  non, varius eget ligula. Donec scelerisque libero vel nisl ultrices, a \
  sodales justo tempus. Fusce vulputate suscipit elit at posuere. Duis in \
  dignissim enim, eu euismod diam.\
  

  Morbi sollicitudin accumsan laoreet. Duis consectetur cursus consequat. \
  Phasellus massa metus, feugiat id dui et, finibus sollicitudin magna. Donec \
  dignissim dapibus est in tempor. Quisque finibus, purus sit amet finibus \
  eleifend, nibh tortor volutpat quam, in molestie erat dolor nec elit. Nullam \
  tempor, mauris et sagittis tempus, mi dolor iaculis risus, eu aliquam elit \
  dolor laoreet risus. Suspendisse lorem diam, maximus at malesuada ut, rutrum \
  vitae tellus. Integer tortor magna, tristique vitae ipsum quis, vestibulum \
  laoreet arcu. Duis dignissim libero eget eros euismod dictum. Nulla at \
  convallis lacus. Interdum et malesuada fames ac ante ipsum primis in \
  faucibus. Donec maximus, diam sed viverra venenatis, dolor metus fringilla \
  libero, in tristique mauris ex id turpis. Duis lacinia ultrices viverra. \
  Fusce id consequat mauris.\
  

  Ut ac turpis mattis, laoreet nisl at, facilisis metus. Vestibulum odio \
  tellus, dapibus sollicitudin lacinia sit amet, finibus ullamcorper augue. \
  Etiam ac porttitor nisi. Pellentesque ligula felis, interdum eget tristique \
  et, sagittis quis lacus. Sed facilisis lacinia porttitor. Etiam vel ante ut \
  tellus scelerisque vulputate id auctor purus. Sed facilisis auctor velit \
  eget porta. Aenean convallis sapien nibh, ac sagittis mauris eleifend vitae. \
  Aliquam sit amet ex nisl.",
  tags: ['story'],
  author: user3.full_name,
  author_id: user3.id,
  created_at: DateTime.now
)

story4 = Story.create!(
  title: 'The Struggle of Living in Ian\'s Shadow',
  body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus \
  interdum nunc nibh, convallis placerat ipsum posuere ac. Suspendisse maximus \
  leo eget lacus volutpat fringilla. Sed a viverra arcu, sed porttitor leo. \
  Integer molestie risus quis metus condimentum tempor. Proin euismod \
  ultrices neque, a dictum mauris iaculis eu. Aliquam nec mauris risus. \
  Curabitur tristique tempus erat, et gravida dolor tincidunt nec. Fusce \
  pellentesque nec nibh quis congue. Aliquam tristique semper mi, eu laoreet \
  nunc tincidunt eget. Nunc lectus leo, tincidunt id dapibus sit amet, posuere \
  a magna. Vestibulum id lorem eget metus mollis sodales. Sed sit amet enim et \
  nunc blandit lobortis non et libero. Etiam turpis purus, placerat vel blandit \
  non, varius eget ligula. Donec scelerisque libero vel nisl ultrices, a \
  sodales justo tempus. Fusce vulputate suscipit elit at posuere. Duis in \
  dignissim enim, eu euismod diam.\
  

  Morbi sollicitudin accumsan laoreet. Duis consectetur cursus consequat. \
  Phasellus massa metus, feugiat id dui et, finibus sollicitudin magna. Donec \
  dignissim dapibus est in tempor. Quisque finibus, purus sit amet finibus \
  eleifend, nibh tortor volutpat quam, in molestie erat dolor nec elit. Nullam \
  tempor, mauris et sagittis tempus, mi dolor iaculis risus, eu aliquam elit \
  dolor laoreet risus. Suspendisse lorem diam, maximus at malesuada ut, rutrum \
  vitae tellus. Integer tortor magna, tristique vitae ipsum quis, vestibulum \
  laoreet arcu. Duis dignissim libero eget eros euismod dictum. Nulla at \
  convallis lacus. Interdum et malesuada fames ac ante ipsum primis in \
  faucibus. Donec maximus, diam sed viverra venenatis, dolor metus fringilla \
  libero, in tristique mauris ex id turpis. Duis lacinia ultrices viverra. \
  Fusce id consequat mauris.\
  

  Ut ac turpis mattis, laoreet nisl at, facilisis metus. Vestibulum odio \
  tellus, dapibus sollicitudin lacinia sit amet, finibus ullamcorper augue. \
  Etiam ac porttitor nisi. Pellentesque ligula felis, interdum eget tristique \
  et, sagittis quis lacus. Sed facilisis lacinia porttitor. Etiam vel ante ut \
  tellus scelerisque vulputate id auctor purus. Sed facilisis auctor velit \
  eget porta. Aenean convallis sapien nibh, ac sagittis mauris eleifend vitae. \
  Aliquam sit amet ex nisl.\
  

  Nulla pulvinar gravida orci quis mollis. In molestie quis orci at tristique. \
  Etiam dolor orci, maximus sed quam eu, eleifend varius felis. Ut sagittis \
  sit amet odio sed tristique. Lorem ipsum dolor sit amet, consectetur \
  adipiscing elit. Aenean ut leo odio. Nunc dui ante, vestibulum nec metus \
  sed, iaculis blandit nulla. Etiam facilisis, felis eget lacinia mollis, enim \
  libero pharetra purus, id blandit mauris enim nec dolor. Sed condimentum, \
  libero in ultricies vehicula, nulla arcu pretium neque, vitae volutpat neque \
  mauris a neque. Etiam id enim ex. Donec volutpat tincidunt felis, sit amet \
  tincidunt velit dictum sit amet. Aliquam in posuere sapien. Quisque sodales \
  erat quis ipsum varius, sit amet pellentesque erat laoreet.\
  

  Duis fringilla gravida laoreet. Vestibulum eget massa finibus est ullamcorper \
  feugiat. Suspendisse potenti. In consequat faucibus turpis quis placerat. \
  Aliquam eget mi fringilla diam posuere posuere. Donec iaculis, odio id \
  faucibus consectetur, ante leo aliquet massa, eget dignissim massa arcu ac \
  nunc. Donec sit amet blandit ipsum. Pellentesque sagittis facilisis lacus, \
  eget pulvinar enim luctus vitae. Etiam bibendum et lacus eget sollicitudin. \
  Maecenas purus diam, faucibus id ullamcorper sed, rutrum in sapien. Sed \
  gravida metus felis, ultrices ornare turpis ullamcorper ut. Ut tempor nunc id \
  diam lacinia fermentum. Cras pretium scelerisque felis, sit amet lacinia orci. \
  Aliquam accumsan erat id erat venenatis, a cursus metus iaculis. Nunc feugiat \
  erat iaculis lectus tempor, sit amet molestie erat rhoncus. Mauris lorem mi, \
  tempor a ultricies ac, molestie laoreet libero.",
  tags: ['story'],
  author: user3.full_name,
  author_id: user3.id,
  created_at: DateTime.now
)

story5 = Story.create!(
  title: 'Is This Joke Getting Old?',
  body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus \
  interdum nunc nibh, convallis placerat ipsum posuere ac. Suspendisse maximus \
  leo eget lacus volutpat fringilla. Sed a viverra arcu, sed porttitor leo. \
  Integer molestie risus quis metus condimentum tempor. Proin euismod \
  ultrices neque, a dictum mauris iaculis eu. Aliquam nec mauris risus. \
  Curabitur tristique tempus erat, et gravida dolor tincidunt nec. Fusce \
  pellentesque nec nibh quis congue. Aliquam tristique semper mi, eu laoreet \
  nunc tincidunt eget. Nunc lectus leo, tincidunt id dapibus sit amet, posuere \
  a magna. Vestibulum id lorem eget metus mollis sodales. Sed sit amet enim et \
  nunc blandit lobortis non et libero. Etiam turpis purus, placerat vel blandit \
  non, varius eget ligula. Donec scelerisque libero vel nisl ultrices, a \
  sodales justo tempus. Fusce vulputate suscipit elit at posuere. Duis in \
  dignissim enim, eu euismod diam.\
  

  Morbi sollicitudin accumsan laoreet. Duis consectetur cursus consequat. \
  Phasellus massa metus, feugiat id dui et, finibus sollicitudin magna. Donec \
  dignissim dapibus est in tempor. Quisque finibus, purus sit amet finibus \
  eleifend, nibh tortor volutpat quam, in molestie erat dolor nec elit. Nullam \
  tempor, mauris et sagittis tempus, mi dolor iaculis risus, eu aliquam elit \
  dolor laoreet risus. Suspendisse lorem diam, maximus at malesuada ut, rutrum \
  vitae tellus. Integer tortor magna, tristique vitae ipsum quis, vestibulum \
  laoreet arcu. Duis dignissim libero eget eros euismod dictum. Nulla at \
  convallis lacus. Interdum et malesuada fames ac ante ipsum primis in \
  faucibus. Donec maximus, diam sed viverra venenatis, dolor metus fringilla \
  libero, in tristique mauris ex id turpis. Duis lacinia ultrices viverra. \
  Fusce id consequat mauris.\
  

  Ut ac turpis mattis, laoreet nisl at, facilisis metus. Vestibulum odio \
  tellus, dapibus sollicitudin lacinia sit amet, finibus ullamcorper augue. \
  Etiam ac porttitor nisi. Pellentesque ligula felis, interdum eget tristique \
  et, sagittis quis lacus. Sed facilisis lacinia porttitor. Etiam vel ante ut \
  tellus scelerisque vulputate id auctor purus. Sed facilisis auctor velit \
  eget porta. Aenean convallis sapien nibh, ac sagittis mauris eleifend vitae. \
  Aliquam sit amet ex nisl.\
  

  Nulla pulvinar gravida orci quis mollis. In molestie quis orci at tristique. \
  Etiam dolor orci, maximus sed quam eu, eleifend varius felis. Ut sagittis \
  sit amet odio sed tristique. Lorem ipsum dolor sit amet, consectetur \
  adipiscing elit. Aenean ut leo odio. Nunc dui ante, vestibulum nec metus \
  sed, iaculis blandit nulla. Etiam facilisis, felis eget lacinia mollis, enim \
  libero pharetra purus, id blandit mauris enim nec dolor. Sed condimentum, \
  libero in ultricies vehicula, nulla arcu pretium neque, vitae volutpat neque \
  mauris a neque. Etiam id enim ex. Donec volutpat tincidunt felis, sit amet \
  tincidunt velit dictum sit amet. Aliquam in posuere sapien. Quisque sodales \
  erat quis ipsum varius, sit amet pellentesque erat laoreet.\
  

  Duis fringilla gravida laoreet. Vestibulum eget massa finibus est ullamcorper \
  feugiat. Suspendisse potenti. In consequat faucibus turpis quis placerat. \
  Aliquam eget mi fringilla diam posuere posuere. Donec iaculis, odio id \
  faucibus consectetur, ante leo aliquet massa, eget dignissim massa arcu ac \
  nunc. Donec sit amet blandit ipsum. Pellentesque sagittis facilisis lacus, \
  eget pulvinar enim luctus vitae. Etiam bibendum et lacus eget sollicitudin. \
  Maecenas purus diam, faucibus id ullamcorper sed, rutrum in sapien. Sed \
  gravida metus felis, ultrices ornare turpis ullamcorper ut. Ut tempor nunc id \
  diam lacinia fermentum. Cras pretium scelerisque felis, sit amet lacinia orci. \
  Aliquam accumsan erat id erat venenatis, a cursus metus iaculis. Nunc feugiat \
  erat iaculis lectus tempor, sit amet molestie erat rhoncus. Mauris lorem mi, \
  tempor a ultricies ac, molestie laoreet libero.",
  tags: ['story'],
  author: user3.full_name,
  author_id: user3.id,
  created_at: DateTime.now
)

story6 = Story.create!(
  title: 'Turns Out I\'m The 2nd Greatest',
  body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus \
  interdum nunc nibh, convallis placerat ipsum posuere ac. Suspendisse maximus \
  leo eget lacus volutpat fringilla. Sed a viverra arcu, sed porttitor leo. \
  Integer molestie risus quis metus condimentum tempor. Proin euismod \
  ultrices neque, a dictum mauris iaculis eu. Aliquam nec mauris risus. \
  Curabitur tristique tempus erat, et gravida dolor tincidunt nec. Fusce \
  pellentesque nec nibh quis congue. Aliquam tristique semper mi, eu laoreet \
  nunc tincidunt eget. Nunc lectus leo, tincidunt id dapibus sit amet, posuere \
  a magna. Vestibulum id lorem eget metus mollis sodales. Sed sit amet enim et \
  nunc blandit lobortis non et libero. Etiam turpis purus, placerat vel blandit \
  non, varius eget ligula. Donec scelerisque libero vel nisl ultrices, a \
  sodales justo tempus. Fusce vulputate suscipit elit at posuere. Duis in \
  dignissim enim, eu euismod diam.\
  

  Morbi sollicitudin accumsan laoreet. Duis consectetur cursus consequat. \
  Phasellus massa metus, feugiat id dui et, finibus sollicitudin magna. Donec \
  dignissim dapibus est in tempor. Quisque finibus, purus sit amet finibus \
  eleifend, nibh tortor volutpat quam, in molestie erat dolor nec elit. Nullam \
  tempor, mauris et sagittis tempus, mi dolor iaculis risus, eu aliquam elit \
  dolor laoreet risus. Suspendisse lorem diam, maximus at malesuada ut, rutrum \
  vitae tellus. Integer tortor magna, tristique vitae ipsum quis, vestibulum \
  laoreet arcu. Duis dignissim libero eget eros euismod dictum. Nulla at \
  convallis lacus. Interdum et malesuada fames ac ante ipsum primis in \
  faucibus. Donec maximus, diam sed viverra venenatis, dolor metus fringilla \
  libero, in tristique mauris ex id turpis. Duis lacinia ultrices viverra. \
  Fusce id consequat mauris.\
  

  Ut ac turpis mattis, laoreet nisl at, facilisis metus. Vestibulum odio \
  tellus, dapibus sollicitudin lacinia sit amet, finibus ullamcorper augue. \
  Etiam ac porttitor nisi. Pellentesque ligula felis, interdum eget tristique \
  et, sagittis quis lacus. Sed facilisis lacinia porttitor. Etiam vel ante ut \
  tellus scelerisque vulputate id auctor purus. Sed facilisis auctor velit \
  eget porta. Aenean convallis sapien nibh, ac sagittis mauris eleifend vitae. \
  Aliquam sit amet ex nisl.\
  

  Nulla pulvinar gravida orci quis mollis. In molestie quis orci at tristique. \
  Etiam dolor orci, maximus sed quam eu, eleifend varius felis. Ut sagittis \
  sit amet odio sed tristique. Lorem ipsum dolor sit amet, consectetur \
  adipiscing elit. Aenean ut leo odio. Nunc dui ante, vestibulum nec metus \
  sed, iaculis blandit nulla. Etiam facilisis, felis eget lacinia mollis, enim \
  libero pharetra purus, id blandit mauris enim nec dolor. Sed condimentum, \
  libero in ultricies vehicula, nulla arcu pretium neque, vitae volutpat neque \
  mauris a neque. Etiam id enim ex. Donec volutpat tincidunt felis, sit amet \
  tincidunt velit dictum sit amet. Aliquam in posuere sapien. Quisque sodales \
  erat quis ipsum varius, sit amet pellentesque erat laoreet.\
  

  Duis fringilla gravida laoreet. Vestibulum eget massa finibus est ullamcorper \
  feugiat. Suspendisse potenti. In consequat faucibus turpis quis placerat. \
  Aliquam eget mi fringilla diam posuere posuere. Donec iaculis, odio id \
  faucibus consectetur, ante leo aliquet massa, eget dignissim massa arcu ac \
  nunc. Donec sit amet blandit ipsum. Pellentesque sagittis facilisis lacus, \
  eget pulvinar enim luctus vitae. Etiam bibendum et lacus eget sollicitudin. \
  Maecenas purus diam, faucibus id ullamcorper sed, rutrum in sapien. Sed \
  gravida metus felis, ultrices ornare turpis ullamcorper ut. Ut tempor nunc id \
  diam lacinia fermentum. Cras pretium scelerisque felis, sit amet lacinia orci. \
  Aliquam accumsan erat id erat venenatis, a cursus metus iaculis. Nunc feugiat \
  erat iaculis lectus tempor, sit amet molestie erat rhoncus. Mauris lorem mi, \
  tempor a ultricies ac, molestie laoreet libero.",
  tags: ['story'],
  author: user5.full_name,
  author_id: user5.id,
  created_at: DateTime.now
)

story7 = Story.create!(
  title: 'When Can Ian Start?',
  body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus \
  interdum nunc nibh, convallis placerat ipsum posuere ac. Suspendisse maximus \
  leo eget lacus volutpat fringilla. Sed a viverra arcu, sed porttitor leo. \
  Integer molestie risus quis metus condimentum tempor. Proin euismod \
  ultrices neque, a dictum mauris iaculis eu. Aliquam nec mauris risus. \
  Curabitur tristique tempus erat, et gravida dolor tincidunt nec. Fusce \
  pellentesque nec nibh quis congue. Aliquam tristique semper mi, eu laoreet \
  nunc tincidunt eget. Nunc lectus leo, tincidunt id dapibus sit amet, posuere \
  a magna. Vestibulum id lorem eget metus mollis sodales. Sed sit amet enim et \
  nunc blandit lobortis non et libero. Etiam turpis purus, placerat vel blandit \
  non, varius eget ligula. Donec scelerisque libero vel nisl ultrices, a \
  sodales justo tempus. Fusce vulputate suscipit elit at posuere. Duis in \
  dignissim enim, eu euismod diam.\
  

  Morbi sollicitudin accumsan laoreet. Duis consectetur cursus consequat. \
  Phasellus massa metus, feugiat id dui et, finibus sollicitudin magna. Donec \
  dignissim dapibus est in tempor. Quisque finibus, purus sit amet finibus \
  eleifend, nibh tortor volutpat quam, in molestie erat dolor nec elit. Nullam \
  tempor, mauris et sagittis tempus, mi dolor iaculis risus, eu aliquam elit \
  dolor laoreet risus. Suspendisse lorem diam, maximus at malesuada ut, rutrum \
  vitae tellus. Integer tortor magna, tristique vitae ipsum quis, vestibulum \
  laoreet arcu. Duis dignissim libero eget eros euismod dictum. Nulla at \
  convallis lacus. Interdum et malesuada fames ac ante ipsum primis in \
  faucibus. Donec maximus, diam sed viverra venenatis, dolor metus fringilla \
  libero, in tristique mauris ex id turpis. Duis lacinia ultrices viverra. \
  Fusce id consequat mauris.\
  

  Ut ac turpis mattis, laoreet nisl at, facilisis metus. Vestibulum odio \
  tellus, dapibus sollicitudin lacinia sit amet, finibus ullamcorper augue. \
  Etiam ac porttitor nisi. Pellentesque ligula felis, interdum eget tristique \
  et, sagittis quis lacus. Sed facilisis lacinia porttitor. Etiam vel ante ut \
  tellus scelerisque vulputate id auctor purus. Sed facilisis auctor velit \
  eget porta. Aenean convallis sapien nibh, ac sagittis mauris eleifend vitae. \
  Aliquam sit amet ex nisl.\
  

  Nulla pulvinar gravida orci quis mollis. In molestie quis orci at tristique. \
  Etiam dolor orci, maximus sed quam eu, eleifend varius felis. Ut sagittis \
  sit amet odio sed tristique. Lorem ipsum dolor sit amet, consectetur \
  adipiscing elit. Aenean ut leo odio. Nunc dui ante, vestibulum nec metus \
  sed, iaculis blandit nulla. Etiam facilisis, felis eget lacinia mollis, enim \
  libero pharetra purus, id blandit mauris enim nec dolor. Sed condimentum, \
  libero in ultricies vehicula, nulla arcu pretium neque, vitae volutpat neque \
  mauris a neque. Etiam id enim ex. Donec volutpat tincidunt felis, sit amet \
  tincidunt velit dictum sit amet. Aliquam in posuere sapien. Quisque sodales \
  erat quis ipsum varius, sit amet pellentesque erat laoreet.\
  

  Duis fringilla gravida laoreet. Vestibulum eget massa finibus est ullamcorper \
  feugiat. Suspendisse potenti. In consequat faucibus turpis quis placerat. \
  Aliquam eget mi fringilla diam posuere posuere. Donec iaculis, odio id \
  faucibus consectetur, ante leo aliquet massa, eget dignissim massa arcu ac \
  nunc. Donec sit amet blandit ipsum. Pellentesque sagittis facilisis lacus, \
  eget pulvinar enim luctus vitae. Etiam bibendum et lacus eget sollicitudin. \
  Maecenas purus diam, faucibus id ullamcorper sed, rutrum in sapien. Sed \
  gravida metus felis, ultrices ornare turpis ullamcorper ut. Ut tempor nunc id \
  diam lacinia fermentum. Cras pretium scelerisque felis, sit amet lacinia orci. \
  Aliquam accumsan erat id erat venenatis, a cursus metus iaculis. Nunc feugiat \
  erat iaculis lectus tempor, sit amet molestie erat rhoncus. Mauris lorem mi, \
  tempor a ultricies ac, molestie laoreet libero.",
  tags: ['story'],
  author: user3.full_name,
  author_id: user3.id,
  created_at: DateTime.now
)

story8 = Story.create!(
  title: 'How to Make Your Team Even Better',
  body: "Hire Ian.",
  tags: ['story'],
  author: user3.full_name,
  author_id: user3.id,
  created_at: DateTime.now
)

story9 = Story.create!(
  title: 'How to be More Like Ian',
  body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus \
  interdum nunc nibh, convallis placerat ipsum posuere ac. Suspendisse maximus \
  leo eget lacus volutpat fringilla. Sed a viverra arcu, sed porttitor leo. \
  Integer molestie risus quis metus condimentum tempor. Proin euismod \
  ultrices neque, a dictum mauris iaculis eu. Aliquam nec mauris risus. \
  Curabitur tristique tempus erat, et gravida dolor tincidunt nec. Fusce \
  pellentesque nec nibh quis congue. Aliquam tristique semper mi, eu laoreet \
  nunc tincidunt eget. Nunc lectus leo, tincidunt id dapibus sit amet, posuere \
  a magna. Vestibulum id lorem eget metus mollis sodales. Sed sit amet enim et \
  nunc blandit lobortis non et libero. Etiam turpis purus, placerat vel blandit \
  non, varius eget ligula. Donec scelerisque libero vel nisl ultrices, a \
  sodales justo tempus. Fusce vulputate suscipit elit at posuere. Duis in \
  dignissim enim, eu euismod diam.\
  

  Morbi sollicitudin accumsan laoreet. Duis consectetur cursus consequat. \
  Phasellus massa metus, feugiat id dui et, finibus sollicitudin magna. Donec \
  dignissim dapibus est in tempor. Quisque finibus, purus sit amet finibus \
  eleifend, nibh tortor volutpat quam, in molestie erat dolor nec elit. Nullam \
  tempor, mauris et sagittis tempus, mi dolor iaculis risus, eu aliquam elit \
  dolor laoreet risus. Suspendisse lorem diam, maximus at malesuada ut, rutrum \
  vitae tellus. Integer tortor magna, tristique vitae ipsum quis, vestibulum \
  laoreet arcu. Duis dignissim libero eget eros euismod dictum. Nulla at \
  convallis lacus. Interdum et malesuada fames ac ante ipsum primis in \
  faucibus. Donec maximus, diam sed viverra venenatis, dolor metus fringilla \
  libero, in tristique mauris ex id turpis. Duis lacinia ultrices viverra. \
  Fusce id consequat mauris.\
  

  Ut ac turpis mattis, laoreet nisl at, facilisis metus. Vestibulum odio \
  tellus, dapibus sollicitudin lacinia sit amet, finibus ullamcorper augue. \
  Etiam ac porttitor nisi. Pellentesque ligula felis, interdum eget tristique \
  et, sagittis quis lacus. Sed facilisis lacinia porttitor. Etiam vel ante ut \
  tellus scelerisque vulputate id auctor purus. Sed facilisis auctor velit \
  eget porta. Aenean convallis sapien nibh, ac sagittis mauris eleifend vitae. \
  Aliquam sit amet ex nisl.\
  

  Nulla pulvinar gravida orci quis mollis. In molestie quis orci at tristique. \
  Etiam dolor orci, maximus sed quam eu, eleifend varius felis. Ut sagittis \
  sit amet odio sed tristique. Lorem ipsum dolor sit amet, consectetur \
  adipiscing elit. Aenean ut leo odio. Nunc dui ante, vestibulum nec metus \
  sed, iaculis blandit nulla. Etiam facilisis, felis eget lacinia mollis, enim \
  libero pharetra purus, id blandit mauris enim nec dolor. Sed condimentum, \
  libero in ultricies vehicula, nulla arcu pretium neque, vitae volutpat neque \
  mauris a neque. Etiam id enim ex. Donec volutpat tincidunt felis, sit amet \
  tincidunt velit dictum sit amet. Aliquam in posuere sapien. Quisque sodales \
  erat quis ipsum varius, sit amet pellentesque erat laoreet.\
  

  Duis fringilla gravida laoreet. Vestibulum eget massa finibus est ullamcorper \
  feugiat. Suspendisse potenti. In consequat faucibus turpis quis placerat. \
  Aliquam eget mi fringilla diam posuere posuere. Donec iaculis, odio id \
  faucibus consectetur, ante leo aliquet massa, eget dignissim massa arcu ac \
  nunc. Donec sit amet blandit ipsum. Pellentesque sagittis facilisis lacus, \
  eget pulvinar enim luctus vitae. Etiam bibendum et lacus eget sollicitudin. \
  Maecenas purus diam, faucibus id ullamcorper sed, rutrum in sapien. Sed \
  gravida metus felis, ultrices ornare turpis ullamcorper ut. Ut tempor nunc id \
  diam lacinia fermentum. Cras pretium scelerisque felis, sit amet lacinia orci. \
  Aliquam accumsan erat id erat venenatis, a cursus metus iaculis. Nunc feugiat \
  erat iaculis lectus tempor, sit amet molestie erat rhoncus. Mauris lorem mi, \
  tempor a ultricies ac, molestie laoreet libero.",
  tags: ['story'],
  author: user3.full_name,
  author_id: user3.id,
  created_at: DateTime.now
)

story10 = Story.create!(
  title: 'How to Come Up with More Story Titles',
  body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus \
  interdum nunc nibh, convallis placerat ipsum posuere ac. Suspendisse maximus \
  leo eget lacus volutpat fringilla. Sed a viverra arcu, sed porttitor leo. \
  Integer molestie risus quis metus condimentum tempor. Proin euismod \
  ultrices neque, a dictum mauris iaculis eu. Aliquam nec mauris risus. \
  Curabitur tristique tempus erat, et gravida dolor tincidunt nec. Fusce \
  pellentesque nec nibh quis congue. Aliquam tristique semper mi, eu laoreet \
  nunc tincidunt eget. Nunc lectus leo, tincidunt id dapibus sit amet, posuere \
  a magna. Vestibulum id lorem eget metus mollis sodales. Sed sit amet enim et \
  nunc blandit lobortis non et libero. Etiam turpis purus, placerat vel blandit \
  non, varius eget ligula. Donec scelerisque libero vel nisl ultrices, a \
  sodales justo tempus. Fusce vulputate suscipit elit at posuere. Duis in \
  dignissim enim, eu euismod diam.\
  

  Morbi sollicitudin accumsan laoreet. Duis consectetur cursus consequat. \
  Phasellus massa metus, feugiat id dui et, finibus sollicitudin magna. Donec \
  dignissim dapibus est in tempor. Quisque finibus, purus sit amet finibus \
  eleifend, nibh tortor volutpat quam, in molestie erat dolor nec elit. Nullam \
  tempor, mauris et sagittis tempus, mi dolor iaculis risus, eu aliquam elit \
  dolor laoreet risus. Suspendisse lorem diam, maximus at malesuada ut, rutrum \
  vitae tellus. Integer tortor magna, tristique vitae ipsum quis, vestibulum \
  laoreet arcu. Duis dignissim libero eget eros euismod dictum. Nulla at \
  convallis lacus. Interdum et malesuada fames ac ante ipsum primis in \
  faucibus. Donec maximus, diam sed viverra venenatis, dolor metus fringilla \
  libero, in tristique mauris ex id turpis. Duis lacinia ultrices viverra. \
  Fusce id consequat mauris.\
  

  Ut ac turpis mattis, laoreet nisl at, facilisis metus. Vestibulum odio \
  tellus, dapibus sollicitudin lacinia sit amet, finibus ullamcorper augue. \
  Etiam ac porttitor nisi. Pellentesque ligula felis, interdum eget tristique \
  et, sagittis quis lacus. Sed facilisis lacinia porttitor. Etiam vel ante ut \
  tellus scelerisque vulputate id auctor purus. Sed facilisis auctor velit \
  eget porta. Aenean convallis sapien nibh, ac sagittis mauris eleifend vitae. \
  Aliquam sit amet ex nisl.\
  

  Nulla pulvinar gravida orci quis mollis. In molestie quis orci at tristique. \
  Etiam dolor orci, maximus sed quam eu, eleifend varius felis. Ut sagittis \
  sit amet odio sed tristique. Lorem ipsum dolor sit amet, consectetur \
  adipiscing elit. Aenean ut leo odio. Nunc dui ante, vestibulum nec metus \
  sed, iaculis blandit nulla. Etiam facilisis, felis eget lacinia mollis, enim \
  libero pharetra purus, id blandit mauris enim nec dolor. Sed condimentum, \
  libero in ultricies vehicula, nulla arcu pretium neque, vitae volutpat neque \
  mauris a neque. Etiam id enim ex. Donec volutpat tincidunt felis, sit amet \
  tincidunt velit dictum sit amet. Aliquam in posuere sapien. Quisque sodales \
  erat quis ipsum varius, sit amet pellentesque erat laoreet.\
  

  Duis fringilla gravida laoreet. Vestibulum eget massa finibus est ullamcorper \
  feugiat. Suspendisse potenti. In consequat faucibus turpis quis placerat. \
  Aliquam eget mi fringilla diam posuere posuere. Donec iaculis, odio id \
  faucibus consectetur, ante leo aliquet massa, eget dignissim massa arcu ac \
  nunc. Donec sit amet blandit ipsum. Pellentesque sagittis facilisis lacus, \
  eget pulvinar enim luctus vitae. Etiam bibendum et lacus eget sollicitudin. \
  Maecenas purus diam, faucibus id ullamcorper sed, rutrum in sapien. Sed \
  gravida metus felis, ultrices ornare turpis ullamcorper ut. Ut tempor nunc id \
  diam lacinia fermentum. Cras pretium scelerisque felis, sit amet lacinia orci. \
  Aliquam accumsan erat id erat venenatis, a cursus metus iaculis. Nunc feugiat \
  erat iaculis lectus tempor, sit amet molestie erat rhoncus. Mauris lorem mi, \
  tempor a ultricies ac, molestie laoreet libero.",
  tags: ['story'],
  author: demoUser.full_name,
  author_id: demoUser.id,
  created_at: DateTime.now
)

story11 = Story.create!(
  title: 'Delete Me',
  body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus \
  interdum nunc nibh, convallis placerat ipsum posuere ac. Suspendisse maximus \
  leo eget lacus volutpat fringilla. Sed a viverra arcu, sed porttitor leo. \
  Integer molestie risus quis metus condimentum tempor. Proin euismod \
  ultrices neque, a dictum mauris iaculis eu. Aliquam nec mauris risus. \
  Curabitur tristique tempus erat, et gravida dolor tincidunt nec. Fusce \
  pellentesque nec nibh quis congue. Aliquam tristique semper mi, eu laoreet \
  nunc tincidunt eget. Nunc lectus leo, tincidunt id dapibus sit amet, posuere \
  a magna. Vestibulum id lorem eget metus mollis sodales. Sed sit amet enim et \
  nunc blandit lobortis non et libero. Etiam turpis purus, placerat vel blandit \
  non, varius eget ligula. Donec scelerisque libero vel nisl ultrices, a \
  sodales justo tempus. Fusce vulputate suscipit elit at posuere. Duis in \
  dignissim enim, eu euismod diam.\
  

  Morbi sollicitudin accumsan laoreet. Duis consectetur cursus consequat. \
  Phasellus massa metus, feugiat id dui et, finibus sollicitudin magna. Donec \
  dignissim dapibus est in tempor. Quisque finibus, purus sit amet finibus \
  eleifend, nibh tortor volutpat quam, in molestie erat dolor nec elit. Nullam \
  tempor, mauris et sagittis tempus, mi dolor iaculis risus, eu aliquam elit \
  dolor laoreet risus. Suspendisse lorem diam, maximus at malesuada ut, rutrum \
  vitae tellus. Integer tortor magna, tristique vitae ipsum quis, vestibulum \
  laoreet arcu. Duis dignissim libero eget eros euismod dictum. Nulla at \
  convallis lacus. Interdum et malesuada fames ac ante ipsum primis in \
  faucibus. Donec maximus, diam sed viverra venenatis, dolor metus fringilla \
  libero, in tristique mauris ex id turpis. Duis lacinia ultrices viverra. \
  Fusce id consequat mauris.\
  

  Ut ac turpis mattis, laoreet nisl at, facilisis metus. Vestibulum odio \
  tellus, dapibus sollicitudin lacinia sit amet, finibus ullamcorper augue. \
  Etiam ac porttitor nisi. Pellentesque ligula felis, interdum eget tristique \
  et, sagittis quis lacus. Sed facilisis lacinia porttitor. Etiam vel ante ut \
  tellus scelerisque vulputate id auctor purus. Sed facilisis auctor velit \
  eget porta. Aenean convallis sapien nibh, ac sagittis mauris eleifend vitae. \
  Aliquam sit amet ex nisl.\
  

  Nulla pulvinar gravida orci quis mollis. In molestie quis orci at tristique. \
  Etiam dolor orci, maximus sed quam eu, eleifend varius felis. Ut sagittis \
  sit amet odio sed tristique. Lorem ipsum dolor sit amet, consectetur \
  adipiscing elit. Aenean ut leo odio. Nunc dui ante, vestibulum nec metus \
  sed, iaculis blandit nulla. Etiam facilisis, felis eget lacinia mollis, enim \
  libero pharetra purus, id blandit mauris enim nec dolor. Sed condimentum, \
  libero in ultricies vehicula, nulla arcu pretium neque, vitae volutpat neque \
  mauris a neque. Etiam id enim ex. Donec volutpat tincidunt felis, sit amet \
  tincidunt velit dictum sit amet. Aliquam in posuere sapien. Quisque sodales \
  erat quis ipsum varius, sit amet pellentesque erat laoreet.\
  

  Duis fringilla gravida laoreet. Vestibulum eget massa finibus est ullamcorper \
  feugiat. Suspendisse potenti. In consequat faucibus turpis quis placerat. \
  Aliquam eget mi fringilla diam posuere posuere. Donec iaculis, odio id \
  faucibus consectetur, ante leo aliquet massa, eget dignissim massa arcu ac \
  nunc. Donec sit amet blandit ipsum. Pellentesque sagittis facilisis lacus, \
  eget pulvinar enim luctus vitae. Etiam bibendum et lacus eget sollicitudin. \
  Maecenas purus diam, faucibus id ullamcorper sed, rutrum in sapien. Sed \
  gravida metus felis, ultrices ornare turpis ullamcorper ut. Ut tempor nunc id \
  diam lacinia fermentum. Cras pretium scelerisque felis, sit amet lacinia orci. \
  Aliquam accumsan erat id erat venenatis, a cursus metus iaculis. Nunc feugiat \
  erat iaculis lectus tempor, sit amet molestie erat rhoncus. Mauris lorem mi, \
  tempor a ultricies ac, molestie laoreet libero.",
  tags: ['story'],
  author: demoUser.full_name,
  author_id: demoUser.id,
  created_at: DateTime.now
)

story12 = Story.create!(
  title: 'Ten Reasons Why You Should Hire My Son',
  body: "1. He's really humble and would never make a website devoted solely \
  to self promotion.\
  

  2. He showers almost every day.\
  

  3. He fixes the internet by unplugging and plugging back in the router so he's \
  obviously great with technology.\


  4. He's a good boy. \


  5. I'll send him to work with cookies some times.\


  6. He's probably my favorite child but don't tell the others.\


  7. I don't know if I'm creattive enough to come up with more of these.\


  8. His teacher in fourth grade said he was smart.\


  9. I don't want to have to support him when he's older.\


  10. I can't think of any more but these lists always have ten.",
  tags: ['story'],
  author: user2.full_name,
  author_id: user2.id,
  created_at: DateTime.now
)

# story images

require 'open-uri'

image1 = URI.open('https://medium-ian-farr-seeds.s3.us-west-1.amazonaws.com/stairs.jpg')
story1.photo.attach(io: File.open(image1), filename: 'stairs.jpg')

image2 = URI.open('https://medium-ian-farr-seeds.s3.us-west-1.amazonaws.com/studio.jpg')
story2.photo.attach(io: File.open(image2), filename: 'studio.jpg')

image3 = URI.open('https://medium-ian-farr-seeds.s3.us-west-1.amazonaws.com/danger-reading.jpg')
story3.photo.attach(io: File.open(image3), filename: 'danger-reading.jpg')

image4 = URI.open('https://medium-ian-farr-seeds.s3.us-west-1.amazonaws.com/blossom.jpg')
story4.photo.attach(io: File.open(image4), filename: 'blossom.jpg')

image5 = URI.open('https://medium-ian-farr-seeds.s3.us-west-1.amazonaws.com/lighthouse.jpg')
story5.photo.attach(io: File.open(image5), filename: 'lighthouse.jpg')

image6 = URI.open('https://medium-ian-farr-seeds.s3.us-west-1.amazonaws.com/lions.jpg')
story6.photo.attach(io: File.open(image6), filename: 'lions.jpg')

image7 = URI.open('https://medium-ian-farr-seeds.s3.us-west-1.amazonaws.com/creepy.jpg')
story7.photo.attach(io: File.open(image7), filename: 'creepy.jpg')

image8 = URI.open('https://medium-ian-farr-seeds.s3.us-west-1.amazonaws.com/mountain.jpg')
story8.photo.attach(io: File.open(image8), filename: 'mountain.jpg')

image9 = URI.open('https://medium-ian-farr-seeds.s3.us-west-1.amazonaws.com/beach-waves.jpg')
story9.photo.attach(io: File.open(image9), filename: 'beach-waves.jpg')

image10 = URI.open('https://medium-ian-farr-seeds.s3.us-west-1.amazonaws.com/rock-pattern.jpg')
story10.photo.attach(io: File.open(image10), filename: 'rock-pattern.jpg')

image11 = URI.open('https://medium-ian-farr-seeds.s3.us-west-1.amazonaws.com/skye.jpg')
story11.photo.attach(io: File.open(image11), filename: 'skye.jpg')

image12 = URI.open('https://medium-ian-farr-seeds.s3.us-west-1.amazonaws.com/book.jpg')
story12.photo.attach(io: File.open(image12), filename: 'book.jpg')



# Claps

clap1 = Clap.create!(
  clapper_id: 1,
  story_id: story1.id
)

clap2 = Clap.create!(
  clapper_id: 2,
  story_id: story1.id
)

clap3 = Clap.create!(
  clapper_id: 3,
  story_id: story1.id
)

clap4 = Clap.create!(
  clapper_id: 4,
  story_id: story1.id
)

clap5 = Clap.create!(
  clapper_id: 1,
  story_id: story2.id
)

clap6 = Clap.create!(
  clapper_id: 1,
  story_id: story3.id
)

clap7 = Clap.create!(
  clapper_id: 1,
  story_id: story4.id
)

clap8 = Clap.create!(
  clapper_id: 1,
  story_id: story5.id
)

clap9 = Clap.create!(
  clapper_id: 1,
  story_id: story6.id
)

clap10 = Clap.create!(
  clapper_id: 1,
  story_id: story7.id
)

clap11 = Clap.create!(
  clapper_id: 1,
  story_id: story8.id
)

clap12 = Clap.create!(
  clapper_id: 1,
  story_id: story9.id
)

clap13 = Clap.create!(
  clapper_id: 123,
  story_id: story12.id
)

clap14 = Clap.create!(
  clapper_id: 124,
  story_id: story12.id
)

clap15 = Clap.create!(
  clapper_id: 125,
  story_id: story12.id
)

clap16 = Clap.create!(
  clapper_id: 126,
  story_id: story12.id
)

clap17 = Clap.create!(
  clapper_id: 127,
  story_id: story12.id
)

clap18 = Clap.create!(
  clapper_id: 128,
  story_id: story12.id
)

list1 = List.create!(
  user_id: demoUser.id,
  story_id: story1.id
)

list2 = List.create!(
  user_id: demoUser.id,
  story_id: story2.id
)

list3 = List.create!(
  user_id: user1.id,
  story_id: story2.id
)

list3 = List.create!(
  user_id: user2.id,
  story_id: story2.id
)



