USERS = [
  {
    email: 'thebride@killbill.com',
    password: 'password',
    full_name: 'Beatrix Kiddo',
    avatar_url: 'https://res.cloudinary.com/opratododia/image/upload/v1584398196/avatars/iu.jpg'
  },
  {
    email: 'gonzo@gmail.com',
    password: 'password',
    full_name: 'Hunter S. Thompson',
    avatar_url: 'https://res.cloudinary.com/opratododia/image/upload/v1584398406/avatars/iu.jpg'
  },
  {
    email: 'thedude@biglebowski.com',
    password: 'password',
    full_name: 'Jeffrey Lebowski',
    avatar_url: 'https://res.cloudinary.com/opratododia/image/upload/v1584398781/avatars/iu.jpg'
  },
  {
    email: 'badmotherfucker@pulp-fiction.com',
    password: 'password',
    full_name: 'Jules Winnfield',
    avatar_url: 'https://res.cloudinary.com/opratododia/image/upload/v1584398993/avatars/iu.jpg'
  },
  {
    email: 'jack@spacemonkeys.com',
    password: 'password',
    full_name: 'Tyler Durden',
    avatar_url: 'https://res.cloudinary.com/opratododia/image/upload/v1584399136/avatars/iu.jpg'
  },
  {
    email: 'jdilla@gmail.com',
    password: 'password',
    full_name: 'Jay Dilla',
    avatar_url: 'https://res.cloudinary.com/opratododia/image/upload/v1584400149/avatars/iu.jpg'
  }
]

User.destroy_all
User.create(USERS)