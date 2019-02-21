<comment>
  <div class="comment">
    <div class="entercomment">
      <input type="text" ref="ab" placeholder="Enter Comment">
        <button type="button" name="button" onclick={addAb}>Submit</button>
    </div>
    <div show={ myAb.length == 0 }>
      <p>Please enter the first comment!</p>
    </div>
    <div each={ myAb } class="abili">
      <p>{ caption }</p>
      <button type="button" name="button" onclick={ remove }>Delete</button>

    </div>
  </div>

  <script type="text/javascript">
    this.myAb = [
      {
        caption: "Delicious!"
      },

    ];
    var that = this;

    this.remove = function(event){
      console.log('EVENT:', event);
      var abObj = event.item;
      var index = that.myAb.indexOf(abObj);
      that.myAb.splice(index, 1);
      that.update();
    }

    this.addAb = function(event){
      console.log(event);
      var caption = this.refs.ab.value;
      var abli = { caption: caption };
      this.myAb.push(abli);
      this.refs.ab.value = "";
    }
  </script>
</comment>
