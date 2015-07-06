
@AdminConfig =
  name: Config.name
  collections:
    Habits:
      color: 'red'
      icon: 'pencil'
      label: '习惯'
      extraFields: ['habitcategory']
      tableColumns: [
        { label: '名字', name: 'name' }
        { label: '种类', name: 'category()', template : 'adminHCCell'}
        { label: '适合性别', name: 'suitablegender'}
        { label: '适合年龄', name: 'suitableage'}
        { label: '能力培养', name: 'abilitytraining'}
        { label: '描述', name: 'description'}
        { label: '父母注意', name: 'needattention'}
      ]
    HabitCategories:
      color: 'blue'
      icon: 'comment'
      label: "习惯种类"
      tableColumns: [
        { label: '名字', name: 'name' }
      ]
  dashboard:
    homeUrl: '/dashboard'
  #autoForm:
    #omitFields: ['createdAt', 'updatedAt']
