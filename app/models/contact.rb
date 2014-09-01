class Contact < ActiveRecord::Base
	has_no_table

	column :name, :string
	column :email, :string
	column :content, :string

	validates_presence_of :name
	validates_presence_of :email
	validates_presence_of :content
	validates_format_of :email, :with => /\A[-a-z09_+\.]+\@([-a-z09]+\.)+[a-z09]{2,4}\z/i
	validates_length_of :content, :maximum => 500
end