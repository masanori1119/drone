// コメントの文字数制限（投稿ページ）
function ShowLength( str ) {
   document.getElementById("inputlength").innerHTML = "現在" + str.length + "文字(20文字以上入力してください。）";
}

function ShowLength2( str ) {
   document.getElementById("inputlength2").innerHTML = "現在" + str.length + "文字(20文字以上入力してください。）";
}



//ranking.html.erb で使用
$(window).on("load", function() {
//load(ページを読み込むと起動)
  $("li").on("click", function() {
//liタブ（id必須)をクリックで起動
    $("li.selected").removeClass("selected");
//クリックしたタブ（li)の色を変える
    $(this).addClass("selected");
//クリックしたタブ(li)の色を変える
    $(".java-taiou div").hide(); 
//<div class"java-taiou">を非表示にする。
    $("." + this.id).show(); // クリックされたボタンに対応する要素を表示する
  });
});


// index menuの表示・非表示
$(function(){

$("#menubtn").click(function(){
  $("#menu").slideToggle();
});
});

//show.html.erb で使用（コメント表示）
// jQuery(function($){
//     $('#slide').click(function(){
//         $('#target').slideToggle('slow');
//     });
// });


// //columns.index.html.erb で使用
// $(window).on("load", function() {
// //load(ページを読み込むと起動)
//   $("p").on("click", function() {
// //liタブ（id必須)をクリックで起動
//     $("p.colom-categori-moji").removeClass("colom-categori-moji");
// //クリックしたタブ（li)の色を変える
//     $(this).addClass("colom-categori-moji");
// //クリックしたタブ(li)の色を変える
//     $(".java-taiou div").hide(); 
// //<div class"java-taiou">を非表示にする。
//     $("." + this.id).show(); 
//      // クリックされたボタンに対応する要素を表示する
//   });
// });