@echo off
setlocal

REM Script para gerar o executavel da interface grafica.
REM Requer um Python funcional em D:\python\python.exe.

set PYTHON_EXE=D:\python\python.exe

if not exist "%PYTHON_EXE%" (
    echo Python nao encontrado em %PYTHON_EXE%
    echo Ajuste o caminho no arquivo build_exe.bat e tente novamente.
    exit /b 1
)

echo [1/2] Garantindo PyInstaller e pygame...
"%PYTHON_EXE%" -m pip install pyinstaller pygame
if errorlevel 1 (
    echo Falha ao instalar PyInstaller.
    exit /b 1
)

echo [2/3] Gerando efeitos sonoros...
"%PYTHON_EXE%" tools\generate_sounds.py
if errorlevel 1 (
    echo Falha ao gerar efeitos sonoros.
    exit /b 1
)

echo [3/4] Baixando efeitos reais...
"%PYTHON_EXE%" tools\fetch_real_sounds.py
if errorlevel 1 (
    echo Falha ao baixar efeitos reais.
    exit /b 1
)

echo [4/4] Gerando EXE pygame...
"%PYTHON_EXE%" -m PyInstaller --noconfirm --onefile --windowed ^
  --name SimuladorDetranChecklist ^
  --add-data "simulador_detran\dados;simulador_detran\dados" ^
  --add-data "simulador_detran\assets;simulador_detran\assets" ^
  simulador_gui.py

if errorlevel 1 (
    echo Falha na geracao do executavel pygame.
    exit /b 1
)

echo EXE gerado com sucesso em dist\SimuladorDetranChecklist.exe
endlocal
