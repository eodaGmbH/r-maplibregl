(()=>{var i=class{constructor(e){this._id=e.container,this._map=new maplibregl.Map(e),this._map.on("mouseover",()=>{this._map.getCanvas().style.cursor="pointer"}),this._map.on("mouseout",()=>{this._map.getCanvas().style.cursor=""}),this._map.addControl(new maplibregl.NavigationControl)}getMap(){return this._map}applyMapMethod(e,t){this._map[e](...t)}addControl(e,t,o){this._map.addControl(new maplibregl[e](t),o)}addMarker({lngLat:e,popup:t,options:o}){let a=new maplibregl.Marker(o).setLngLat(e);if(t){let p=new maplibregl.Popup(t.options).setHTML(t.text);a.setPopup(p)}a.addTo(this._map)}addLayer(e){this._map.addLayer(e),typeof Shiny<"u"&&this._map.on("click",e.id,t=>{console.log(t,t.features[0]);let o=e.id.replaceAll("-","_"),a=`${this._id}_layer_${o}`,p={props:t.features[0].properties,layer_id:e.id};console.log(a,p),Shiny.onInputChange(a,p)})}addPopup(e,t){let o={closeButton:!1},a=new maplibregl.Popup(o);this._map.on("click",e,p=>{let n=p.features[0].properties[t];a.setLngLat(p.lngLat).setHTML(n).addTo(this._map)})}addTooltip(e,t){let o={closeButton:!1,closeOnClick:!1},a=new maplibregl.Popup(o);this._map.on("mousemove",e,p=>{let n=p.features[0].properties[t];a.setLngLat(p.lngLat).setHTML(n).addTo(this._map)}),this._map.on("mouseleave",e,()=>{a.remove()})}render(e){e.forEach(([t,o])=>{if(["addLayer","addPopup","addTooltip","addMarker","addPopup","addControl"].includes(t)){console.log("Custom method",t,o),this[t](...o);return}console.log("Map method",t),this.applyMapMethod(t,o)})}};var l=i;function d(r,e,t){let o=null;function a(s){console.log(s),s.mapOptions.container=r.id;let n=new l(s.mapOptions);n.getMap().on("load",()=>{n.render(s.calls)})}function p(s,n){}return{renderValue:a,resize:p}}HTMLWidgets.widget({name:"maplibre",type:"output",factory:d});})();
