$(function(){
    $("a.add_fields")
      .on('cocoon:before-insert', function () {
          console.log('before insert');
      })
      .on('cocoon:after-insert', function () {
          console.log('after insert');
      })
      .on("cocoon:before-remove", function () {
          console.log('before remove');
      })
      .on("cocoon:after-remove", function () {
          console.log('after remove');
      });

   $("a.add_fields").on('click', function(){
     console.log('looks like clicking works...');
   });
});