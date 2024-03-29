class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.integer :user_id
      t.string :title
      t.integer :status
      t.string :category
      t.string :plan
      t.boolean :option_earlyend
      t.boolean :option_urgent
      t.integer :open
      t.string :totalcost
      t.string :name
      t.string :subname
      t.integer :term
      t.datetime :end_time
      t.string :industry_1
      t.string :industry_2
      t.boolean :usage_web
      t.boolean :usage_print
      t.boolean :usage_package
      t.boolean :usage_signboard
      t.boolean :usage_other
      t.boolean :format_psd
      t.boolean :format_eps
      t.boolean :format_ai
      t.boolean :format_indesign
      t.boolean :format_jpg
      t.boolean :format_gif
      t.boolean :format_png
      t.boolean :format_pdf
      t.boolean :format_other
      t.string :color
      t.string :colorpattern_1
      t.string :colorpattern_2
      t.string :colorpattern_3
      t.string :colorcode_1
      t.string :colorcode_2
      t.string :colorcode_3
      t.string :parts
      t.boolean :logotype_iconic
      t.boolean :logotype_illustrative
      t.boolean :logotype_textual
      t.boolean :logostyle_abstruct
      t.boolean :logostyle_brush
      t.boolean :logostyle_character
      t.boolean :logostyle_emblem
      t.boolean :logostyle_letterform
      t.boolean :logostyle_picturemark
      t.boolean :logostyle_web20
      t.boolean :logostyle_wordmark
      t.string :favorite_1
      t.string :favorite_2
      t.string :favorite_3
      t.string :reference_url
      t.text :description
      t.integer :image_meter_1
      t.integer :image_meter_2
      t.integer :image_meter_3
      t.integer :image_meter_4
      t.integer :image_meter_5

      t.timestamps
    end
  end
end
