@Habits = new Mongo.Collection("habits");
Schemas.Habits = new SimpleSchema
  name:
    type:String
    label:'名字'
  suitablegender:
    type: String
    label: '性别'
    allowedValues: [
      "男"
      "女"
      "都可"
    ]
  suitableage:
    type: [String]
    label: '适合年龄'
    allowedValues: [
      "2-3岁"
      "3-4岁"
      "4-6岁"
      "6-8岁"
      "8-10岁"
      "10-12岁"
    ]
    autoform:
      noselect: true
  abilitytraining:
    type: String
    label:'培养能力'
  description:
    type: String
    label:'描述'
    autoform:
      rows: 5
  needattention:
    type: String
    label:'父母注意'
    autoform:
      rows: 5
  picture:
    type: String
    autoform:
      afFieldInput:
        type: 'fileUpload'
        collection: 'Attachments'
  habitcategory:
    type: String
    label:'习惯种类'
    regEx: SimpleSchema.RegEx.Id
    autoform:
      options: ->
        _.map HabitCategories.find().fetch(), (hc)->
          label: hc.name
          value: hc._id

Habits.attachSchema(Schemas.Habits)

Habits.helpers
  category: ->
    hc = HabitCategories.findOne(@habitcategory)
    if hc?.name
      hc.name
    else
      hc?._id