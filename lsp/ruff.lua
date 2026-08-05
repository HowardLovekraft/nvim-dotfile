local function on_attach(client, _)
  client.server_capabilities.hoverProvider = false
end


return {
  on_attach = on_attach,
}

