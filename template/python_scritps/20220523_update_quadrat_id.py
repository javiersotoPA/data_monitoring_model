## Find layer on canvas
layers = QgsProject.instance().mapLayersByName('quadrats')
if len(layers) == 0:
    print('!Error Cannot quadrats table loaded')
layer = layers[0]  # Assume there is at least 1
field_idx = layer.fields().indexOf('quadrat_id')
new_value = 'quadrat_'
n= 0
with edit(layer):
    for feat in layer.getFeatures():
        n = n + 1
        layer.changeAttributeValue(feat.id(), field_idx, new_value + str(n))