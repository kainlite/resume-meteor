@Frames = new Meteor.Collection('frames')

if Meteor.isClient
  Template.frameList.me = "Gabriel Garrido"
  Template.frameList.about = "About me"
  Template.frameList.head = "Résumé"
  Template.frameList.presentation = "A Sysadmin/Programmer/DevOps interested in learning and developing stuff with all the tech available..."
  Template.frameList.contact = "kainlite@gmail.com"
  Template.frameList.studyframes = ->
    Frames.find({ kind: 'study' },
        sort:
          to: -1
    )
  Template.frameList.workframes = ->
    Frames.find({ kind: 'work' },
        sort:
          to: -1
    )
