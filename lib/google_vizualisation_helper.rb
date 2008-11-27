module GoogleVizualisationHelper
  def google_vizualisation_tag(viz)
    result = <<-eos
      <script type="text/javascript" src="http://www.google.com/jsapi"></script>\n
    eos
    result << viz.render
    result << "\n"
    result << <<-eos
      <div id="#{viz.uid}" style="width: #{viz.width}px; height: #{viz.height}px;"></div>
    eos
    RAILS_DEFAULT_LOGGER.debug(result)
    return result
  end
end