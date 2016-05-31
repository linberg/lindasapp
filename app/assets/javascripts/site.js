$(document).on('ready page:load', function(){
    $('.img-zoom').elevateZoom({
        zoomType: "lens",
        lensShape: "round",
        lensSize: 150

      });

    $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
    $('.rated').raty({ path: '/assets',
      readOnly: true,
      score: function() {
        return $(this).attr('data-score');
      }
    });
});
