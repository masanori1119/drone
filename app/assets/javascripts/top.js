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