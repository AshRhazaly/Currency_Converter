class @ConvertWidget

  constructor: ->
    @from_input = $('.from_user')
    @to_input = $('.ahah')

    # @sgd = $('.sgd_input')
    # @usd = $('.usd_input')
    # @eur = $('.eur_input')

    @convert_click = $('.convert-button')

    @input_ccy_select
    @output_ccy_select
    this.bind_convert()

    @sgd_usd = 0.7
    @sgd_eur = 0.67
    @base_ccy_sgd = 1
    @output_ccy
    @final_output

  bind_convert: =>
    @convert_click.on 'click', =>
        user_input = @from_input.val()
        @input_ccy_select = $('input[name=inputCcy]:checked')
        from_criteria = @input_ccy_select.val()
        @output_ccy_select = $('output[name=outputCcy]:checked')
        to_criteria = @output_ccy_select.val()

        switch from_criteria
          when "SGD" then @output_ccy = @base_ccy_sgd
          when "USD" then @output_ccy = @base_ccy_sgd/@sgd_usd
          when "EUR" then @output_ccy = @base_ccy_sgd/@sgd_eur

        switch to_criteria
          when "SGD" then @final_output = @output_ccy
          when "USD" then @final_output = @output_ccy/ @sgd_usd
          when "EUR" then @final_output = @output_ccy/ @sgd_eur

        console.log(@final_output)


    # @sgd.click ->
    #   if $(this).is(':checked')
    #     alert $(this).val()



  $('document').ready ->
    converter = new ConvertWidget





  #   $('input[type="radio"]').click ->
  # if $(this).is(':checked')
  #   alert $(this).val()
  # return
