class Post < ApplicationRecord
    has_many :comments, dependent: :destroy
    #validates:条件づけ
    validates:title, presence: true
    validates:body, presence: true
end
