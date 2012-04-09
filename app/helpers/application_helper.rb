#encoding: utf-8
module ApplicationHelper
  def get_category_name
    {
      'logo'=>'ロゴ',
      'namecard'=>'名刺',
      'illustration'=>'イラストレーション',
      'bookcover'=>'ブックカバー',
      'flyer'=>'フライヤー',
      'brush'=>'書道',
      'iphone-icon'=>'iphoneアプリアイコン',
      'other'=>'その他'
    }
  end
  def get_plan_detail
    {
      '1-1'=>{:name=>'スタートアップ',:prize=>'0',:fee=>'0'},
      '1-2'=>{:name=>'ベーシック',:prize=>'0',:fee=>'0'},
      '1-3'=>{:name=>'プレミアム',:prize=>'0',:fee=>'0'},
      '2-1'=>{:name=>'スタートアップ',:prize=>'0',:fee=>'0'},
      '2-2'=>{:name=>'ベーシック',:prize=>'0',:fee=>'0'},
      '2-3'=>{:name=>'プレミアム',:prize=>'0',:fee=>'0'},
      '3-1'=>{:name=>'スタートアップ',:prize=>'0',:fee=>'0'},
      '3-2'=>{:name=>'ベーシック',:prize=>'0',:fee=>'0'},
      '3-3'=>{:name=>'プレミアム',:prize=>'0',:fee=>'0'}
    }
  end
  def get_plan_prize
    {
      '1-1'=>'15000',
      '1-2'=>'20000',
      '1-3'=>'35000',
      '2-1'=>'20000',
      '2-2'=>'30000',
      '2-3'=>'50000',
      '3-1'=>'35000',
      '3-2'=>'50000',
      '3-3'=>'60000'
    }
  end
  def get_open_detail
    {
      1=>{:name=>'標準'},
      2=>{:name=>'クローズ'},
      3=>{:name=>'シークレット'}
    }
  end
  def get_option_detail
    {
    }
  end
  def get_status_name
    {
      1=>'一時保存',
      2=>'公開中',
      3=>'終了'
    }
  end
end
