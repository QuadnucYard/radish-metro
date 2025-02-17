
#let _settings = json.decode(sys.inputs.at("settings", default: "{}"))
#let _toggles = _settings.at("toggles", default: (:))

#let show-disabled = _toggles.at("disabled", default: true)
#let show-started-only = _toggles.at("startedOnly", default: false)
#let show-opened-only = _toggles.at("openedOnly", default: false)

#let show-labels = _toggles.at("labels", default: true)
#let show-title = _toggles.at("title", default: true)
#let show-legend = _toggles.at("legend", default: true)

#let use-alt = _toggles.at("alt", default: true)

#let desc-date = if "date" in _settings {
  let (y, m, d) = _settings.date
  datetime(year: y, month: m, day: d)
} else {
  datetime.today()
}
