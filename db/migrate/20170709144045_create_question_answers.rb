class CreateQuestionAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :question_answers do |t|
      t.belongs_to :question, foreign_key: true
      t.integer :user_id
      t.string :user_type
      t.text :answer

      t.timestamps
    end

    add_index :question_answers, [:user_id, :user_type]

  end
end
