# ECE532
ECE532 project - Tank 2020
Hardware 
  -/IP_repo/ip/GameLogic_2.0: Contains all game logic related modules
    -GameLogic.sv: Takes input from "PlayerTank.sv" and "ai_tank.v" to make decisions about the current game status. Send requests to "PlotManager.v" to draw game images on the video frame.
    -PlayerTank.sv: Take converted BT input from GPIO. Calculate player tank and shell position and send to "GameLogic.sv".
    -ai_tank.v: Take uB calculated input from GPIO. Calculate enemy tank and shell position and send to "GameLogic.sv".
  -/IP_repo/ip/CMDA_controller_1.0: Contains CDMA_controller module
    -CMDA_controller_v1_0.v: Take frame address and image address from "PlotManager.v", convert and forward the requests to CDMA IP.
  -/IP_repo/ip/PlotManager/: Contains PlotManager module
    -PlotManager.v: Take requests from "GameLogic.sv". Serialize the request and forward to "CMDA_controller".
Software
  -/HDMI_4.sdk\Video: Contains source files for initializing and assisting the gameplay.
    -main.c: Contains the functions initializing the game and commands the enemy tank.
    -/dynclk: Contains the functions that set up the video timing controller. 
    -/images: Contains the helper functions that initialize the game image.
      -images.h Contains the game image converted to C code.
Documents
  -/docs: Contains project related documents.
    -Final Report.pptx: Presentation slides for the final design.
    -Mid Project Report.pptx: Presentation slides for mid-project demo.
    -Project Proposal.pptx:  Presentation slides for the  proposal.
    -Final Report.docx: Final report for the design

  
