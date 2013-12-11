function Subtitle(obj, subtitles) {
        if(obj != null)
                this.obj = obj;
        else
                this.obj = document.body;
        if(subtitles != null)
                this.subtitles = subtitles;
        else
                this.subtitles = [
                        "CPAN é a linguagem. Perl é apenas a sintaxe",
                        "Existe mais de uma maneira de fazer isso",
                        "Manter coisas simples de forma simples e tornar coisas difíceis possíveis",
                        "use Perl",
                ];
        this.start();
}

Subtitle.prototype = {
        getSubtitle: function() {
                var index = Math.floor((Math.random() * this.subtitles.length)+0);
                return this.subtitles[index];
        },
        start: function() {
                this.obj.innerText = this.getSubtitle();
        },
        refresh: function() {
                if(window.$ != null) {
                        var _sub = this;
                        $(this.obj).fadeOut(function(){
                                $(this).text(_sub.getSubtitle());
                                $(this).fadeIn();
                        });
                } else {
                        this.start();
                }
        }
};
