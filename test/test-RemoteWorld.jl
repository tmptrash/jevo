module TestRemoteWorld
  using RemoteWorld
  using Helper
  using FactCheck
  using TestWorldServer
  using Client

  facts("Tests...") do
  	ccon  = Client.create(Helper.IP, Helper.PORT)
  	con   = TestWorldServer.run()
  	world = RemoteWorld.create(Helper.IP, Helper.port, Config.val(:WORLD_WIDTH), Config.val(:WORLD_HEIGHT))
  	RemoteWorld.display(world, 0)
  	Helper.wait(()->)
  	RemoteWorld.stop(world)
  	TestWorldServer.stop(con)
  	Client.stop(ccon)
  end
end