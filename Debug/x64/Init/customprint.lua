-- Son of a bitch, insalada please remind your good old friend known as Carot to add some actual customprint functions. They completely work


getgenv().sli_print = function(text)
    print(text)
    task.wait(.025)
    local msg = game:GetService("CoreGui").DevConsoleMaster.DevConsoleWindow.DevConsoleUI:WaitForChild("MainView").ClientLog[tostring(#game:GetService("CoreGui").DevConsoleMaster.DevConsoleWindow.DevConsoleUI.MainView.ClientLog:GetChildren())-1].msg
    for i, x in pairs({TextColor3 = Color3.fromRGB(69, 165, 236)}) do
        msg[i] = x
    end
    msg.Parent.image.Image = "rbxasset://textures/DevConsole/Info.png"
end
