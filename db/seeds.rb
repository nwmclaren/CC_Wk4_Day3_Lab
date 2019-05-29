require_relative('../models/student')
require_relative('../models/house')
require('pry')
# Student.delete_all()



house1 = House.new({
  'name' => 'Hufflepuff',
  'logo' => 'https://images.ctfassets.net/bxd3o8b291gf/2GyJvxXe40kkkG0suuqUkw/e1a64ec404cf5f19afe9053b9d375230/PM_House_Pages_400_x_400_px_FINAL_CREST3.png?w=550&h=550&fit=thumb&f=center&q=85'
  })

house2 = House.new({
  'name' => 'Ravenclaw',
  'logo' => 'https://images.ctfassets.net/bxd3o8b291gf/5pnnQ5puTuywEEW06w2gSg/91abff3d923b4785ed79e9abda07bd07/PM_House_Pages_400_x_400_px_FINAL_CREST.png?w=550&h=550&fit=thumb&f=center&q=85'

  })

  house3 = House.new({
      'name' => 'Griffindor',
      'logo' => 'https://images.ctfassets.net/bxd3o8b291gf/49zkCzoZlekCmSq6OsycAm/da6278c1af372f18f8b6a71b226e0814/PM_House_Pages_400_x_400_px_FINAL_CREST2.png?w=550&h=550&fit=thumb&f=center&q=85'
    })

    house4 = House.new({
      'name' => 'Slytherin',
      'logo' => 'https://images.ctfassets.net/bxd3o8b291gf/4U98maPA5aEUWcO8uOisOq/e01e17cc414b960380acbf8ace1dc1d5/PM_House_Pages_400_x_400_px_FINAL_CREST4.png?w=550&h=550&fit=thumb&f=center&q=85'
    })


  house1.save()
  house2.save()
  house3.save()
  house4.save()

  student1 = Student.new({
    'first_name' => 'Bloggy',
    'last_name' => 'Magicguy',
    'house_id' => 1,
    'age' => '14'
    })

  student2 = Student.new({
      'first_name' => 'Plop',
      'last_name' => 'Undergrowth',
      'house_id' => 2,
      'age' => '12'
  })
  student1.save()
  student2.save()
