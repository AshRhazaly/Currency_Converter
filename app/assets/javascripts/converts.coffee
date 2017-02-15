class @ConvertWidget

  constructor: ->
    @from_input = $('.from_user').val()
    @to_input = $('.to_user')

    # @sgd = $('.sgd_input')
    # @usd = $('.usd_input')
    # @eur = $('.eur_input')

    @convert_click = $('.convert-button')

    @input_ccy_select = $('input[name=inputCcy]:checked').val()
    @output_ccy_select = $('input[name=outputCcy]:checked').val()

    this.bind_convert()

    @sgd_usd = 0.7
    @sgd_eur = 0.67

    @convert_click.on 'click', =>
      console.log(this.input_ccy_select)
  bind_convert: =>
    # @convert_click.on 'click', =>
    #   console.log(this.input_ccy_select)
      # if @input_ccy_select == "SGD"
        # && @output_ccy_select == "USD"
        # console.log('hello')
        # @to_input.text(@from_input * @sgd_usd)


    # @sgd.click ->
    #   if $(this).is(':checked')
    #     alert $(this).val()



  $('document').ready ->
    converter = new ConvertWidget




  #   $('input[type="radio"]').click ->
  # if $(this).is(':checked')
  #   alert $(this).val()
  # return
