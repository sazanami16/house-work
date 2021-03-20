class Need < ActiveHash::Base

  self.data = [
    { id: 1, name: '補充しますか？' },
    { id: 2, name: '必要' },
    { id: 3, name: '不要' },
  ]

  include ActiveHash::Associations
  has_many :items

  end