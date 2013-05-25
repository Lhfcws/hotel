(function(){

    function get_val(str){
        return str.substr(0, str.length-2);
    }

    function time_step(start, end, step, inval, handler){
        var over = start;
        function inner(){
            if(((start >= over) && (over > end))
               || (start <= over) && (over < end)){
                over += step;
                handler(over);
                setTimeout(inner, inval);
            }
        }
        inner();
    }        
    
    var action = {
        next : function(data, event){
            var old = Number(get_val($('#main-gs').css('margin-left')));
            time_step(old, old-600, -20, 10, function(v){
                $('#main-gs').css('margin-left', v + 'px');
            });
        },
        prev : function(data, event){
            var old = Number(get_val($('#main-gs').css('margin-left')));
            time_step(old, Math.min(0, old+600), 20, 10, function(v){
                $('#main-gs').css('margin-left', v + 'px');
            });
        },
        save : function(data, event){
            var self = $(event.target);
            var d = $('[name]', self.parent());
            var dm = $('.main', self.parent());
            var dd = $('<a href="#" data-action="update"></a>');
            dd.text(dm.val());
            var ddom = dd[0];
            ddom.val = {};
            d.each(function(){
                var self = $(this);
                ddom.val[self.attr('name')] = self.val();
                self.val('');
            });
            $('div.content', self.parent().parent()).append(dd);
            self.parent().addClass('hidden');
        },
        add : function(data, event){
            $('.form', $(event.target).parent()).removeClass('hidden');
        },
        update: function(data, event){
            var self = $(event.target);
            var val = self[0].val, x;
            var form = $('.form', self.parent().parent());
            console.log(window.last = form);
            for(x in val){
                console.log(x, val[x]);
                $('[name='+x+']', form).val(val[x]);
            }
            form.removeClass('hidden');
        },
        cancel: function(data, event){
            $(event.target).parent().addClass('hidden');
        }
    }        
    
    $('#main-gs').click(function(event){
        var self = $(event.target);
        var data = self.data();
        if(data.action){
            action[data.action](data, event);
        }
    });
        
})();
