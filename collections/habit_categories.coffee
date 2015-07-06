@HabitCategories = new Mongo.Collection("habitCategories");
Schemas.HabitCategories = new SimpleSchema
  name:
    type:String
    label:'名字'

HabitCategories.attachSchema(Schemas.HabitCategories)
