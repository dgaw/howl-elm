local newdecoder = bundle_load 'lunajson.decoder'
local newencoder = bundle_load 'lunajson.encoder'
local sax = bundle_load 'lunajson.sax'
-- If you need multiple contexts of decoder and/or encoder,
-- you can require lunajson.decoder and/or lunajson.encoder directly.
return {
	decode = newdecoder(),
	encode = newencoder(),
	newparser = sax.newparser,
	newfileparser = sax.newfileparser,
}
