# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

demoUser = User.create!(full_name: 'DemoUser', email: 'demo@demo.com', password: 'demopassword')

user1 = User.create!(full_name: 'User1', email: 'user1@demo.com', password: '123456')
user2 = User.create!(full_name: 'User2', email: 'user2@demo.com', password: '123456')
user3 = User.create!(full_name: 'User3', email: 'user3@demo.com', password: '123456')



story1 = Story.create!(
  title: 'Story Title',
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
  tags: ['illiterate'],
  author: 'Ian Farr',
  author_id: 1,
  created_at: DateTime.now
)

story2 = Story.create!(
  title: 'Second Story',
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
  tags: ['cool'],
  author: 'Some Guy',
  author_id: 2,
  created_at: DateTime.now
)

story3 = Story.create!(
  title: 'Third Story',
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
  tags: ['scary'],
  author: 'Some Girl',
  author_id: 3,
  created_at: DateTime.now
)

story4 = Story.create!(
  title: 'Fourth Story',
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
  tags: ['sports'],
  author: 'Some Girl',
  author_id: 4,
  created_at: DateTime.now
)

story5 = Story.create!(
  title: 'Fifth Story',
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
  tags: ['lifestyle'],
  author: 'Some Guy',
  author_id: 5,
  created_at: DateTime.now
)

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

clap4 = Clap.create!(
  clapper_id: 1,
  story_id: story2.id
)

clap4 = Clap.create!(
  clapper_id: 1,
  story_id: story3.id
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



