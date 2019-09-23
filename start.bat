@echo off

for /L %%i in (281,1,305) do (
	start cmd /c "title krt_mqtt_client_virtual_%%i && java -jar mqtt-client-virtual.jar %%i"
	ping -n 8 127.0.0.1 1>nul
)