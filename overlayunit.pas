unit overlayunit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, process, Forms, Controls, Graphics, Dialogs, ExtCtrls, unix,
  StdCtrls, Spin, ComCtrls, Buttons, ColorBox, aboutunit,ATStringProc_HtmlColor,crosshairUnit,hudbackgroundUnit,customeffectsunit;



type

  { Tgoverlayform }

  Tgoverlayform = class(TForm)
    aboutBitBtn: TBitBtn;
    gpumemfreqlabel: TLabel;
    engineversionlabel: TLabel;
    ImageList3: TImageList;
    mediaComboBox: TComboBox;
    diskioCheckBox: TCheckBox;
    gpumodelCheckBox: TCheckBox;
    gpupowerCheckBox: TCheckBox;
    gpunameEdit: TEdit;
    cpunameEdit: TEdit;
    gpupowerlabel: TLabel;
    gpumemfreqCheckBox: TCheckBox;
    gpunamelabel: TLabel;
    archlabel: TLabel;
    driverversionCheckBox: TCheckBox;
    driverversionlabel: TLabel;
    engineversionCheckBox: TCheckBox;
    hudversionlabel: TLabel;
    Image1: TImage;
    ImageList2: TImageList;
    iordrwColorButton: TColorButton;
    framegraphRadioButton: TRadioButton;
    framehistogramRadioButton: TRadioButton;
    ramColorButton: TColorButton;
    ramusageCheckBox: TCheckBox;
    SelectDirectoryDialog1: TSelectDirectoryDialog;
    dependencieSpeedButton: TSpeedButton;
    topleftSpeedButton: TSpeedButton;
    spotify1label: TLabel;
    spotify2label: TLabel;
    spotify3label: TLabel;
    toprightSpeedButton: TSpeedButton;
    bottomleftSpeedButton: TSpeedButton;
    bottomrightSpeedButton: TSpeedButton;
    transparencyLabel: TLabel;
    BitBtn1: TBitBtn;
    cas01Image: TImage;
    cas02Image: TImage;
    cas03Image: TImage;
    cas04Image: TImage;
    cas05Image: TImage;
    cas06Image: TImage;
    cas07Image: TImage;
    cas08Image: TImage;
    cas09Image: TImage;
    cas10Image: TImage;
    archCheckBox: TCheckBox;
    backgroundLabel: TLabel;
    hidehudCheckBox: TCheckBox;
    hudversionCheckBox: TCheckBox;
    mediaCheckBox: TCheckBox;
    fxaaCheckBox: TCheckBox;
    casLabel: TLabel;
    casorigLabel: TLabel;
    caspostLabel: TLabel;
    casTrackBar: TTrackBar;
    casTrackBar2: TTrackBar;
    checkallBitBtn: TBitBtn;
    casCheckBox: TCheckBox;
    cpuavrloadCheckBox: TCheckBox;
    cpuColorButton: TColorButton;
    cpuGroupBox: TGroupBox;
    cpulabel: TLabel;
    cpuloadcoreCheckBox: TCheckBox;
    cputempCheckBox: TCheckBox;
    cputemplabel: TLabel;
    cpuusagelabel: TLabel;
    destfolderpathLabel: TLabel;
    FontcolorButton: TColorButton;
    FontcolorLabel: TLabel;
    fontsizeComboBox: TComboBox;
    fontsizeLabel: TLabel;
    fontsizeLabel1: TLabel;
    fontsizeSpinEdit: TSpinEdit;
    fpscustomSpinEdit: TSpinEdit;
    fpslimComboBox: TComboBox;
    fpslimLabel: TLabel;
    fpslimLabel1: TLabel;
    frametimegraphCheckBox: TCheckBox;
    frametimegraphColorButton: TColorButton;
    frametimegraphlabel: TLabel;
    frametimelabel: TLabel;
    frametimelabel2: TLabel;
    lutCheckBox: TCheckBox;
    smaaCheckBox: TCheckBox;
    geSpeedButton: TSpeedButton;
    basaltgeSpeedButton: TSpeedButton;
    GlobalenableLabel: TLabel;
    basaltGlobalenableLabel: TLabel;
    glvsyncComboBox: TComboBox;
    glvsyncLabel: TLabel;
    gpuavrloadCheckBox: TCheckBox;
    gpuclocklabel: TLabel;
    gpuColorButton: TColorButton;
    gpufreqCheckBox: TCheckBox;
    gpuGroupBox: TGroupBox;
    gpulabel: TLabel;
    gputempCheckBox: TCheckBox;
    gputemplabel: TLabel;
    gpuusagelabel: TLabel;
    casGroupBox: TGroupBox;
    effectsGroupBox: TGroupBox;
    hudbackgroundColorButton: TColorButton;
    hudbackgroundShape: TShape;
    hudonoffComboBox: TComboBox;
    hudtranspBitBtn: TBitBtn;
    cas00Image: TImage;
    originalImage: TImage;
    ImageList1: TImageList;
    iordrwlabel: TLabel;
    iordvaluelabel: TLabel;
    iorwvaluelabel: TLabel;
    keybindingsGroupBox: TGroupBox;
    mangohudLabel: TLabel;
    basaltrunBitBtn: TBitBtn;
    basaltsaveBitBtn: TBitBtn;
    dependenciesLabel: TLabel;
    vkbasaltPanel: TPanel;
    vkbasaltLabel: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    loggingComboBox: TComboBox;
    logpathBitBtn: TBitBtn;
    mangohudGroupBox: TGroupBox;
    otherGroupBox: TGroupBox;
    mangohudPanel: TPanel;
    goverlayimage: TImage;
    performanceGroupBox: TGroupBox;
    previewLabel: TLabel;
    ramlabel: TLabel;
    ramusagelabel: TLabel;
    runBitBtn: TBitBtn;
    saveBitBtn: TBitBtn;
    mangohudShape: TShape;
    vkbasaltShape: TShape;
    timeCheckBox: TCheckBox;
    timelabel: TLabel;
    TittlelogLabel: TLabel;
    visualGroupBox: TGroupBox;
    vramColorButton: TColorButton;
    vramlabel: TLabel;
    vramusageCheckBox: TCheckBox;
    vramusagelabel: TLabel;
    vsyncComboBox: TComboBox;
    vsyncLabel: TLabel;
    vulkanfpslabel: TLabel;
    vulkanftimelabel: TLabel;
    vulkanlabel: TLabel;
    procedure archCheckBoxClick(Sender: TObject);
    procedure basaltgeSpeedButtonClick(Sender: TObject);
    procedure basaltsaveBitBtnClick(Sender: TObject);
    procedure bottomleftSpeedButtonClick(Sender: TObject);
    procedure bottomrightSpeedButtonClick(Sender: TObject);
    procedure casCheckBoxChange(Sender: TObject);
    procedure casTrackBarChange(Sender: TObject);
    procedure checkallBitBtnClick(Sender: TObject);
    procedure cpunameEditChange(Sender: TObject);
    procedure crosshairsizeBitBtnClick(Sender: TObject);
    procedure driverversionCheckBoxChange(Sender: TObject);
    procedure engineversionCheckBoxClick(Sender: TObject);
    procedure FontcolorButtonColorChanged(Sender: TObject);
    procedure framegraphRadioButtonChange(Sender: TObject);
    procedure framegraphRadioButtonClick(Sender: TObject);
    procedure framehistogramRadioButtonClick(Sender: TObject);
    procedure geSpeedButtonClick(Sender: TObject);
    procedure gpumemfreqCheckBoxClick(Sender: TObject);
    procedure gpumodelCheckBoxClick(Sender: TObject);
    procedure gpunameEditChange(Sender: TObject);
    procedure gpupowerCheckBoxClick(Sender: TObject);
    procedure hudbackgroundColorButtonColorChanged(Sender: TObject);
    procedure cpuColorButtonColorChanged(Sender: TObject);
    procedure cpuavrloadCheckBoxClick(Sender: TObject);
    procedure cputempCheckBoxClick(Sender: TObject);
    procedure diskioCheckBoxClick(Sender: TObject);
    procedure frametimegraphColorButtonColorChanged(Sender: TObject);
    procedure hudtranspBitBtnClick(Sender: TObject);
    procedure iordrwColorButtonColorChanged(Sender: TObject);
    procedure fontsizeComboBoxChange(Sender: TObject);
    procedure fontsizeComboBoxKeyPress(Sender: TObject; var Key: char);
    procedure fpslimComboBoxChange(Sender: TObject);
    procedure fpslimComboBoxKeyPress(Sender: TObject; var Key: char);
    procedure frametimegraphCheckBoxClick(Sender: TObject);
    procedure glvsyncComboBoxKeyPress(Sender: TObject; var Key: char);
    procedure gpuavrloadCheckBoxClick(Sender: TObject);
    procedure gpuColorButtonColorChanged(Sender: TObject);
    procedure gpufreqCheckBoxClick(Sender: TObject);
    procedure gputempCheckBoxClick(Sender: TObject);
    procedure hudonoffComboBoxKeyPress(Sender: TObject; var Key: char);
    procedure loggingComboBoxKeyPress(Sender: TObject; var Key: char);
    procedure logpathBitBtnClick(Sender: TObject);
    procedure mangohudLabelClick(Sender: TObject);
    procedure mangohudLabelMouseEnter(Sender: TObject);
    procedure mangohudLabelMouseLeave(Sender: TObject);
    procedure mediaComboBoxKeyPress(Sender: TObject; var Key: char);
    procedure ramColorButtonColorChanged(Sender: TObject);
    procedure ramusageCheckBoxClick(Sender: TObject);
    procedure saveasBitBtnClick(Sender: TObject);
    procedure saveBitBtnClick(Sender: TObject);
    procedure runBitBtnClick(Sender: TObject);
    procedure aboutBitBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mediaCheckBoxClick(Sender: TObject);
    procedure timeCheckBoxClick(Sender: TObject);
    procedure topleftSpeedButtonClick(Sender: TObject);
    procedure hudversionCheckBoxClick(Sender: TObject);
    procedure toprightSpeedButtonClick(Sender: TObject);
    procedure vkbasaltLabelClick(Sender: TObject);
    procedure vkbasaltLabelMouseEnter(Sender: TObject);
    procedure vkbasaltLabelMouseLeave(Sender: TObject);
    procedure vramColorButtonColorChanged(Sender: TObject);
    procedure vramusageCheckBoxClick(Sender: TObject);
    procedure vsyncComboBoxKeyPress(Sender: TObject; var Key: char);

  private

  public

  end;

var
  goverlayform: Tgoverlayform;
  s: string;
  Color: string;
  fpsCustomValue:TextFile;
  fpsCustomScript:TextFile;
  fontsizeCustomValue:TextFile;
  fontsizeCustomScript:TextFile;
  crosshairsizeScript:TextFile;
  crosshairsizeValue:TextFile;
  gpucolorValue:TextFile;
  gpucolorScript:TextFile;
  cpucolorValue:TextFile;
  cpucolorScript:TextFile;
  cpucolorhtml: string;
  gpucolorhtml: string;
  iordrwcolorhtml: string;
  iordrwcolorScript:TextFile;
  iordrwcolorValue:TextFile;
  vramcolorhtml: string;
  vramcolorValue: TextFile;
  vramcolorScript: TextFile;
  ramcolorhtml: string;
  ramcolorValue: TextFile;
  ramcolorScript: TextFile;
  frametimegraphcolorhtml: string;
  frametimegraphcolorValue: TextFile;
  frametimegraphcolorScript: TextFile;
  crosshaircolorhtml: string;
  crosshaircolorValue: Textfile;
  crosshaircolorScript: Textfile;
  hudbackgroundcolorhtml: string;
  hudbackgroundcolorValue: Textfile;
  hudbackgroundcolorScript: Textfile;
  togglestateValueVAR: Textfile;
  togglestateValueSTR: string;
  toggleBasaltstateValueVAR: Textfile;
  toggleBasaltstateValueSTR: string;
  userhomepathVAR: Textfile;
  userhomepathSTR: string;
  destinationfolderValue: TextFile;
  destinationfolderScript: TextFile;
  hudfontcolorhtml: string;
  hudfontcolorValue: TextFile;
  hudfontcolorScript: TextFile;
  effectssum: Integer;
  cpunameValue: Textfile;
  cpunameScript: Textfile;
  cpunameSTR: string;
  gpunameValue: Textfile;
  gpunameScript: Textfile;
  gpunameSTR: string;
  mangohudVAR: Textfile;
  mangohudSTR: string;
  mangohuddependencyVALUE: Integer;
  vkbasaltVAR: Textfile;
  vkbasaltSTR: string;
  vkbasaltdependencyVALUE: Integer;
  mangohudsel: boolean;
  vkbasaltsel: boolean;
  mangofile: Textfile;
  fileline : String;

  //Variables for initial values
  initfpslimit: Textfile;
  initfpslimitSTR: string;
  initvsync: Textfile;
  initvsyncSTR: string;
  initgl_vsync: Textfile;
  initgl_vsyncSTR: string;
  initcpustats: Textfile;
  initcpustatsSTR: string;
  initcputemp: Textfile;
  initcputempSTR: string;
  initcoreload: Textfile;
  initcoreloadSTR: string;
  initgpustats: Textfile;
  initgpustatsSTR: string;
  initgputemp: Textfile;
  initgputempSTR: string;
  initgpucoreclock: Textfile;
  initgpucoreclockSTR: string;
  initgpumemclock: Textfile;
  initgpumemclockSTR: string;
  initgpupower: Textfile;
  initgpupowerSTR: string;
  initvulkandriver: Textfile;
  initvulkandriverSTR: string;
  initgpuname: Textfile;
  initgpunameSTR: string;
  initvram: Textfile;
  initvramSTR: string;
  initram: Textfile;
  initramSTR: string;
  initioread: Textfile;
  initioreadSTR: string;
  initframetiming: Textfile;
  initframetimingSTR: string;
  inithistogram: Textfile;
  inithistogramSTR: string;
  inittime: Textfile;
  inittimeSTR: string;
  inithudversion: Textfile;
  inithudversionSTR: string;
  initarch: Textfile;
  initarchSTR: string;
  initengineversion: Textfile;
  initengineversionSTR: string;
  initmediaplayer: Textfile;
  initmediaplayerSTR: string;
  initfontsize: Textfile;
  initfontsizeSTR: string;
  initposition: Textfile;
  initpositionSTR: string;
  initnodisplay: Textfile;
  initnodisplaySTR: string;
  inittogglehud: Textfile;
  inittogglehudSTR: string;
  inittogglelogging: Textfile;
  inittoggleloggingSTR: string;
  initmediaplayername: Textfile;
  initmediaplayernameSTR: string;
  initvkbasalteffects: Textfile;
  initvkbasalteffectsSTR: string;
  initcasSharpness: Textfile;
  initcasSharpnessSTR: string;
  initcputextvalue: Textfile;
  initcputextvalueSTR: string;
  initgputextvalue: Textfile;
  initgputextvalueSTR: string;

implementation

{$R *.lfm}


{ Tgoverlayform }

// Reference to logpathunit so the homepath can be aquired from overlayUnit
uses logpathUnit;

procedure Tgoverlayform.saveBitBtnClick(Sender: TObject);
begin
  //Create directories
  RunCommand('bash -c ''mkdir -p $HOME/.config/MangoHud/''', s);
  //RunCommand('bash -c ''mkdir -p $HOME/.config/goverlay/values/''', s);


  // Delete old file if it exists
  RunCommand('bash -c ''rm $HOME/.config/MangoHud/MangoHud.conf''', s);

  // Create a new file for GOverlay
  RunCommand('bash -c ''echo "################### File Generated by GOverlay ###################" >> $HOME/.config/MangoHud/MangoHud.conf''', s);

  // Popup a notification
  RunCommand('bash -c ''notify-send MangoHud_Config_saved''', s);


  //####################################################################################### PERFORMANCE


    //Setup FPS Limit
     case fpslimCombobox.ItemIndex of
    0:RunCommand('bash -c ''echo "fps_limit=15" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    1:RunCommand('bash -c ''echo "fps_limit=30" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    2:RunCommand('bash -c ''echo "fps_limit=45" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    3:RunCommand('bash -c ''echo "fps_limit=60" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    4:RunCommand('bash -c ''echo "fps_limit=90" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    5:RunCommand('bash -c ''echo "fps_limit=120" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    6:RunCommand('bash -c ''echo "fps_limit=144" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    7:RunCommand('bash -c ''echo "#fps_limit=" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    8:begin
      // Assign custom value to file
      AssignFile(fpsCustomValue, '/tmp/goverlay/fpsCustom');
      Rewrite(fpsCustomValue);
      Writeln(fpsCustomValue,fpscustomSpinedit.Value);
      CloseFile(fpsCustomValue);

      // Create custom script
      AssignFile(fpsCustomScript, '/tmp/goverlay/fpsCustomScript.sh');
      Rewrite(fpsCustomScript);
      Writeln(fpsCustomScript,'FPSc=$(cat /tmp/goverlay/fpsCustom)');  //Store fps custom value in a Linux/Unix variable
      Writeln(fpsCustomScript,'echo "fps_limit=$FPSc" >> $HOME/.config/MangoHud/MangoHud.conf'); //Create correct command with custom value
      CloseFile(fpsCustomScript);

      //execute custom script to store custom value on mangohud.conf
      RunCommand('bash -c ''sh /tmp/goverlay/fpsCustomScript.sh''', s);
     end;
     9:RunCommand('bash -c ''echo "" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
  end;

  //Setup VSYNC

  //VULKAN VSYNC
  case vsyncCombobox.ItemIndex of
    0:RunCommand('bash -c ''echo "vsync=0" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    1:RunCommand('bash -c ''echo "vsync=1" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    2:RunCommand('bash -c ''echo "vsync=2" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    3:RunCommand('bash -c ''echo "vsync=3" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    4:RunCommand('bash -c ''echo "" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
  end;

  //OPENGL VSYNC
  case glvsyncCombobox.ItemIndex of
    0:RunCommand('bash -c ''echo "gl_vsync=-1" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    1:RunCommand('bash -c ''echo "gl_vsync=0" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    2:RunCommand('bash -c ''echo "gl_vsync=n" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    3:RunCommand('bash -c ''echo "gl_vsync=1" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    4:RunCommand('bash -c ''echo "" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
  end;

  //####################################################################################### MANGOHUD

  //###################################################### CPU
  if cpuavrloadCheckbox.Checked=true then
  RunCommand('bash -c ''echo "cpu_stats" >> $HOME/.config/MangoHud/MangoHud.conf''', s);

  if cputempCheckbox.Checked=true then
  RunCommand('bash -c ''echo "cpu_temp" >> $HOME/.config/MangoHud/MangoHud.conf''', s);

  if cpuloadcoreCheckbox.Checked=true then
  RunCommand('bash -c ''echo "core_load" >> $HOME/.config/MangoHud/MangoHud.conf''', s);



  //CPU Color

      // Assign value to file
      AssignFile(cpucolorValue, '/tmp/goverlay/cpucolorValue');
      Rewrite(cpucolorValue);
      Writeln(cpucolorValue,cpucolorhtml);
      CloseFile(cpucolorValue);

      // Create custom script
      AssignFile(cpucolorScript, '/tmp/goverlay/cpucolorScript.sh');
      Rewrite(cpucolorScript);
      Writeln(cpucolorScript,'CPUc=$(cat /tmp/goverlay/cpucolorValue | cut -c 2-10)');  //Store cpu color in Linux/Unix variable and remove # character
      Writeln(cpucolorScript,'echo "cpu_color=$CPUc" >> $HOME/.config/MangoHud/MangoHud.conf'); //Create correct command with color value
      CloseFile(cpucolorScript);

      //execute custom script to store custom value on mangohud.conf
      RunCommand('bash -c ''sh /tmp/goverlay/cpucolorScript.sh''', s);



       //CPU Name

      cpunameSTR := cpunameEdit.text;

      // Assign value to file
      AssignFile(cpunameValue, '/tmp/goverlay/cpunameValue');
      Rewrite(cpunameValue);
      Writeln(cpunameValue,cpunameSTR);
      CloseFile(cpunameValue);

      // Create custom script
      AssignFile(cpunameScript, '/tmp/goverlay/cpunameScript.sh');
      Rewrite(cpunameScript);
      Writeln(cpunameScript,'CPUname=$(cat /tmp/goverlay/cpunameValue)');  //Store cpu name in Linux/Unix variable and remove # character
      Writeln(cpunameScript,'echo "cpu_text=$CPUname" >> $HOME/.config/MangoHud/MangoHud.conf'); //Create correct command with name value
      CloseFile(cpunameScript);

      //execute custom script to store custom value on mangohud.conf
      RunCommand('bash -c ''sh /tmp/goverlay/cpunameScript.sh''', s);

      //###################################################### CPU



      //###################################################### GPU

  //GPU checks
  if gpuavrloadCheckbox.Checked=true then
  RunCommand('bash -c ''echo "gpu_stats" >> $HOME/.config/MangoHud/MangoHud.conf''', s);

  if gputempCheckbox.Checked=true then
  RunCommand('bash -c ''echo "gpu_temp" >> $HOME/.config/MangoHud/MangoHud.conf''', s);

  if gpufreqCheckbox.Checked=true then
  RunCommand('bash -c ''echo "gpu_core_clock" >> $HOME/.config/MangoHud/MangoHud.conf''', s);

  if gpumemfreqCheckbox.Checked=true then
  RunCommand('bash -c ''echo "gpu_mem_clock" >> $HOME/.config/MangoHud/MangoHud.conf''', s);

  if gpupowerCheckbox.Checked=true then
  RunCommand('bash -c ''echo "gpu_power" >> $HOME/.config/MangoHud/MangoHud.conf''', s);

  if driverversionCheckbox.Checked=true then
  RunCommand('bash -c ''echo "vulkan_driver" >> $HOME/.config/MangoHud/MangoHud.conf''', s);

  if gpumodelCheckBox.Checked=true then
  RunCommand('bash -c ''echo "gpu_name" >> $HOME/.config/MangoHud/MangoHud.conf''', s);

   //GPU Color

      // Assign value to file
      AssignFile(gpucolorValue, '/tmp/goverlay/gpucolorValue');
      Rewrite(gpucolorValue);
      Writeln(gpucolorValue,gpucolorhtml);
      CloseFile(gpucolorValue);

      // Create custom script
      AssignFile(gpucolorScript, '/tmp/goverlay/gpucolorScript.sh');
      Rewrite(gpucolorScript);
      Writeln(gpucolorScript,'GPUc=$(cat /tmp/goverlay/gpucolorValue | cut -c 2-10)');  //Store gpu color in Linux/Unix variable and remove # character
      Writeln(gpucolorScript,'echo "gpu_color=$GPUc" >> $HOME/.config/MangoHud/MangoHud.conf'); //Create correct command with crosshair color value
      CloseFile(gpucolorScript);

      //execute custom script to store custom value on mangohud.conf
      RunCommand('bash -c ''sh /tmp/goverlay/gpucolorScript.sh''', s);



      //GPU Name

      gpunameSTR := gpunameEdit.text;

      // Assign value to file
      AssignFile(gpunameValue, '/tmp/goverlay/gpunameValue');
      Rewrite(gpunameValue);
      Writeln(gpunameValue,gpunameSTR);
      CloseFile(gpunameValue);

      // Create custom script
      AssignFile(gpunameScript, '/tmp/goverlay/gpunameScript.sh');
      Rewrite(gpunameScript);
      Writeln(gpunameScript,'gpuname=$(cat /tmp/goverlay/gpunameValue)');  //Store gpu name in Linux/Unix variable and remove # character
      Writeln(gpunameScript,'echo "gpu_text=$gpuname" >> $HOME/.config/MangoHud/MangoHud.conf'); //Create correct command with name value
      CloseFile(gpunameScript);

      //execute custom script to store custom value on mangohud.conf
      RunCommand('bash -c ''sh /tmp/goverlay/gpunameScript.sh''', s);

  if vramusageCheckbox.Checked=true then
  RunCommand('bash -c ''echo "vram" >> $HOME/.config/MangoHud/MangoHud.conf''', s);

  //VRAM Color

      // Assign value to file
      AssignFile(vramcolorValue, '/tmp/goverlay/vramcolorValue');
      Rewrite(vramcolorValue);
      Writeln(vramcolorValue,vramcolorhtml);
      CloseFile(vramcolorValue);

      // Create custom script
      AssignFile(vramcolorScript, '/tmp/goverlay/vramcolorScript.sh');
      Rewrite(vramcolorScript);
      Writeln(vramcolorScript,'VRAMc=$(cat /tmp/goverlay/vramcolorValue | cut -c 2-10)');  //Store vram color in Linux/Unix variable and remove # character
      Writeln(vramcolorScript,'echo "vram_color=$VRAMc" >> $HOME/.config/MangoHud/MangoHud.conf'); //Create correct command with crosshair color value
      CloseFile(vramcolorScript);

      //execute custom script to store custom value on mangohud.conf
      RunCommand('bash -c ''sh /tmp/goverlay/vramcolorScript.sh''', s);

    //###################################################### GPU

   //###################################################### OTHERS

  if ramusageCheckbox.Checked=true then
  RunCommand('bash -c ''echo "ram" >> $HOME/.config/MangoHud/MangoHud.conf''', s);

    //RAM Color
    // Assign value to file
      AssignFile(ramcolorValue, '/tmp/goverlay/ramcolorValue');
      Rewrite(ramcolorValue);
      Writeln(ramcolorValue,ramcolorhtml);
      CloseFile(ramcolorValue);

      // Create custom script
      AssignFile(ramcolorScript, '/tmp/goverlay/ramcolorScript.sh');
      Rewrite(ramcolorScript);
      Writeln(ramcolorScript,'RAMc=$(cat /tmp/goverlay/ramcolorValue | cut -c 2-10)');  //Store ram color in Linux/Unix variable and remove # character
      Writeln(ramcolorScript,'echo "ram_color=$RAMc" >> $HOME/.config/MangoHud/MangoHud.conf'); //Create correct command with crosshair color value
      CloseFile(ramcolorScript);

      //execute custom script to store custom value on mangohud.conf
      RunCommand('bash -c ''sh /tmp/goverlay/ramcolorScript.sh''', s);



  if diskioCheckbox.Checked=true then
  begin
  RunCommand('bash -c ''echo "io_read" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
  RunCommand('bash -c ''echo "io_write" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
  end;

  //DISK IO Color

      // Assign value to file
      AssignFile(iordrwcolorValue, '/tmp/goverlay/iordrwcolorValue');
      Rewrite(iordrwcolorValue);
      Writeln(iordrwcolorValue,iordrwcolorhtml);
      CloseFile(iordrwcolorValue);

      // Create custom script
      AssignFile(iordrwcolorScript, '/tmp/goverlay/iordrwcolorScript.sh');
      Rewrite(iordrwcolorScript);
      Writeln(iordrwcolorScript,'IOc=$(cat /tmp/goverlay/iordrwcolorValue | cut -c 2-10)');  //Store io color in Linux/Unix variable and remove # character
      Writeln(iordrwcolorScript,'echo "io_color=$IOc" >> $HOME/.config/MangoHud/MangoHud.conf'); //Create correct command with color value
      CloseFile(iordrwcolorScript);

      //execute custom script to store custom value on mangohud.conf
      RunCommand('bash -c ''sh /tmp/goverlay/iordrwcolorScript.sh''', s);






  //Others checks
  if frametimegraphCheckbox.Checked=true then
  RunCommand('bash -c ''echo "frame_timing=1" >> $HOME/.config/MangoHud/MangoHud.conf''', s)
  else
  RunCommand('bash -c ''echo "frame_timing=0" >> $HOME/.config/MangoHud/MangoHud.conf''', s);

    //Frame time Graph Color
    // Assign value to file
      AssignFile(frametimegraphcolorValue, '/tmp/goverlay/frametimegraphcolorValue');
      Rewrite(frametimegraphcolorValue);
      Writeln(frametimegraphcolorValue,frametimegraphcolorhtml);
      CloseFile(frametimegraphcolorValue);

      // Create custom script
      AssignFile(frametimegraphcolorScript, '/tmp/goverlay/frametimegraphcolorScript.sh');
      Rewrite(frametimegraphcolorScript);
      Writeln(frametimegraphcolorScript,'FTGc=$(cat /tmp/goverlay/frametimegraphcolorValue | cut -c 2-10)');  //Store frame time graph color in Linux/Unix variable and remove # character
      Writeln(frametimegraphcolorScript,'echo "frametime_color=$FTGc" >> $HOME/.config/MangoHud/MangoHud.conf'); //Create correct command with crosshair color value
      CloseFile(frametimegraphcolorScript);

      //execute custom script to store custom value on mangohud.conf
      RunCommand('bash -c ''sh /tmp/goverlay/frametimegraphcolorScript.sh''', s);


      //Change Frame time graph to histogram

      if framehistogramRadioButton.Checked=true then
      RunCommand('bash -c ''echo "histogram" >> $HOME/.config/MangoHud/MangoHud.conf''', s) ;


  if timeCheckbox.Checked=true then
  RunCommand('bash -c ''echo "time" >> $HOME/.config/MangoHud/MangoHud.conf''', s);

  if hudversionCheckbox.Checked=true then
  RunCommand('bash -c ''echo "version" >> $HOME/.config/MangoHud/MangoHud.conf''', s);

  if archCheckbox.Checked=true then
  RunCommand('bash -c ''echo "arch" >> $HOME/.config/MangoHud/MangoHud.conf''', s);

  if engineversionCheckbox.Checked=true then
  RunCommand('bash -c ''echo "engine_version" >> $HOME/.config/MangoHud/MangoHud.conf''', s);

  if mediaCheckBox.Checked=true then
  RunCommand('bash -c ''echo "media_player" >> $HOME/.config/MangoHud/MangoHud.conf''', s);



      //###################################################### OTHERS

  //####################################################################################### VISUALS


  //Setup Default HUD Visualization
  if hidehudcheckbox.Checked=true then
  RunCommand('bash -c ''echo "no_display" >> $HOME/.config/MangoHud/MangoHud.conf''', s);

  //Background transparency
   case hudbackgroundForm.transptrackbar.Position of
    0:RunCommand('bash -c ''echo "background_alpha=1" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    1:RunCommand('bash -c ''echo "background_alpha=0.9" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    2:RunCommand('bash -c ''echo "background_alpha=0.8" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    3:RunCommand('bash -c ''echo "background_alpha=0.7" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    4:RunCommand('bash -c ''echo "background_alpha=0.6" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    5:RunCommand('bash -c ''echo "background_alpha=0.5" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    6:RunCommand('bash -c ''echo "background_alpha=0.4" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    7:RunCommand('bash -c ''echo "background_alpha=0.3" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    8:RunCommand('bash -c ''echo "background_alpha=0.2" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    9:RunCommand('bash -c ''echo "background_alpha=0.1" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    10:RunCommand('bash -c ''echo "background_alpha=0" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
  end;

  //Font Size
  case fontsizeCombobox.ItemIndex of
    0:RunCommand('bash -c ''echo "font_size=19" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    1:RunCommand('bash -c ''echo "font_size=24" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    2:RunCommand('bash -c ''echo "font_size=38" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    3:begin
      // Assign custom value to file
      AssignFile(fontsizeCustomValue, '/tmp/goverlay/fontsizeCustom');
      Rewrite(fontsizeCustomValue);
      Writeln(fontsizeCustomValue,fontsizeSpinedit.Value);
      CloseFile(fontsizeCustomValue);

      // Create custom script
      AssignFile(fontsizeCustomScript, '/tmp/goverlay/fontsizeCustomScript.sh');
      Rewrite(fontsizeCustomScript);
      Writeln(fontsizeCustomScript,'FONTSIZEc=$(cat /tmp/goverlay/fontsizeCustom)');  //Store font size in a Linux/Unix variable
      Writeln(fontsizeCustomScript,'echo "font_size=$FONTSIZEc" >> $HOME/.config/MangoHud/MangoHud.conf'); //Create correct command with custom value
      CloseFile(fontsizeCustomScript);

      //execute custom script to store custom value on mangohud.conf
      RunCommand('bash -c ''sh /tmp/goverlay/fontsizeCustomScript.sh''', s);

      end;
  end;


  //HUD BACKGROUND COLOR

      // Assign custom value to file
      AssignFile(hudbackgroundcolorValue, '/tmp/goverlay/hudbackgroundcolorValue');
      Rewrite(hudbackgroundcolorValue);
      Writeln(hudbackgroundcolorValue,hudbackgroundcolorhtml);
      CloseFile(hudbackgroundcolorValue);

      // Create custom script
      AssignFile(hudbackgroundcolorScript, '/tmp/goverlay/hudbackgroundcolorScript.sh');
      Rewrite(hudbackgroundcolorScript);
      Writeln(hudbackgroundcolorScript,'HUDBACKGROUNDc=$(cat /tmp/goverlay/hudbackgroundcolorValue| cut -c 2-10)');  //Store hud color in a Linux/Unix variable
      Writeln(hudbackgroundcolorScript,'echo "background_color=$HUDBACKGROUNDc" >> $HOME/.config/MangoHud/MangoHud.conf'); //Create correct command with custom value
      CloseFile(hudbackgroundcolorScript);

      //execute custom script to store custom value on mangohud.conf
      RunCommand('bash -c ''sh /tmp/goverlay/hudbackgroundcolorScript.sh''', s);

  //HUD Position
  //if toprightShape.Brush.Style=bsSolid then
  if topleftSpeedbutton.ImageIndex=0 then
  RunCommand('bash -c ''echo "position=top-left" >> $HOME/.config/MangoHud/MangoHud.conf''', s);

  //if topleftShape.Brush.Style=bsSolid then
  if toprightSpeedbutton.ImageIndex=1 then
  RunCommand('bash -c ''echo "position=top-right" >> $HOME/.config/MangoHud/MangoHud.conf''', s);

  if bottomleftSpeedbutton.ImageIndex=2 then
  //if bottomrightShape.Brush.Style=bsSolid then
  RunCommand('bash -c ''echo "position=bottom-left" >> $HOME/.config/MangoHud/MangoHud.conf''', s);

  //if bottomleftShape.Brush.Style=bsSolid then
  if bottomrightSpeedbutton.ImageIndex=3 then
  RunCommand('bash -c ''echo "position=bottom-right" >> $HOME/.config/MangoHud/MangoHud.conf''', s);



    //HUD Font Color

      // Assign value to file
      AssignFile(hudfontcolorValue, '/tmp/goverlay/hudfontcolorValue');
      Rewrite(hudfontcolorValue);
      Writeln(hudfontcolorValue,hudfontcolorhtml);
      CloseFile(hudfontcolorValue);

      // Create custom script
      AssignFile(hudfontcolorScript, '/tmp/goverlay/hudfontcolorScript.sh');
      Rewrite(hudfontcolorScript);
      Writeln(hudfontcolorScript,'HUDFONTc=$(cat /tmp/goverlay/hudfontcolorValue | cut -c 2-10)');  //Store hud font color in Linux/Unix variable and remove # character
      Writeln(hudfontcolorScript,'echo "text_color=$HUDFONTc" >> $HOME/.config/MangoHud/MangoHud.conf'); //Create correct command with color value
      CloseFile(hudfontcolorScript);

      //execute custom script to store custom value on mangohud.conf
      RunCommand('bash -c ''sh /tmp/goverlay/hudfontcolorScript.sh''', s);

  //####################################################################################### KEYBINDINGS


    //HUD ON / OFF
  case hudonoffCombobox.ItemIndex of
    0:RunCommand('bash -c ''echo "toggle_hud=Shift_R+F10" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    1:RunCommand('bash -c ''echo "toggle_hud=Shift_R+F11" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    2:RunCommand('bash -c ''echo "toggle_hud=Shift_R+F12" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
  end;

     //LOGGING
  case loggingCombobox.ItemIndex of
    0:RunCommand('bash -c ''echo "toggle_logging=Shift_L+F1" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    1:RunCommand('bash -c ''echo "toggle_logging=Shift_L+F2" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    2:RunCommand('bash -c ''echo "toggle_logging=Shift_L+F3" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
  end;


  //Set logging destination folder

  // Assign custom value to file
  AssignFile(destinationfolderValue, '/tmp/goverlay/destinationlogfolder');
  Rewrite(destinationfolderValue);
  Writeln(destinationfolderValue,destinationfolder);
  CloseFile(destinationfolderValue);

  // Create custom script
  AssignFile(destinationfolderScript, '/tmp/goverlay/destinationfolderScript.sh');
  Rewrite(destinationfolderScript);
  Writeln(destinationfolderScript,'DESTFOLDER=$(cat /tmp/goverlay/destinationlogfolder)');  //Store destination folder in a Linux/Unix variable
  Writeln(destinationfolderScript,'echo "output_file=$DESTFOLDER" >> $HOME/.config/MangoHud/MangoHud.conf'); //Create correct command with custom value
  CloseFile(destinationfolderScript);

  //execute custom script to store custom value on mangohud.conf
  RunCommand('bash -c ''sh /tmp/goverlay/destinationfolderScript.sh''', s);


  //update logging label
  destfolderpathLabel.Caption:=destinationfolder;

  //Show logging label
  TittlelogLabel.Visible:=true;
  destfolderpathLabel.Visible:=true;

  // Select media player
  case mediaCombobox.ItemIndex of
    0:RunCommand('bash -c ''echo "media_player_name=spotify" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    1:RunCommand('bash -c ''echo "media_player_name=vlc" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    2:RunCommand('bash -c ''echo "media_player_name=audacious" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
    3:RunCommand('bash -c ''echo "media_player_name=cantata" >> $HOME/.config/MangoHud/MangoHud.conf''', s);
  end;

  //Copy generated Mangohud.conf to goverlay config folder
  RunCommand('bash -c ''yes | cp -rf $HOME/.config/MangoHud/MangoHud.conf $HOME/.config/goverlay/MangoHud.conf ''', s);

  // Delete old initial values and recreate folder
  RunCommand('bash -c ''rm -Rf $HOME/.config/goverlay/initial_values/''', s);
  RunCommand('bash -c ''mkdir -p $HOME/.config/goverlay/initial_values/''', s);
  RunCommand('bash -c ''rm -Rf /tmp/goverlay/initial_values/''', s);
  RunCommand('bash -c ''mkdir -p /tmp/goverlay/initial_values/''', s);


  //Extract configurations from main config File to the initial_values folder for MangoHud

RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w fps_limit >> $HOME/.config/goverlay/initial_values/fps_limit''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w gl_vsync >> $HOME/.config/goverlay/initial_values/gl_vsync''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w vsync >> $HOME/.config/goverlay/initial_values/vsync''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w cpu_stats >> $HOME/.config/goverlay/initial_values/cpu_stats''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w cpu_temp >> $HOME/.config/goverlay/initial_values/cpu_temp''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w core_load >> $HOME/.config/goverlay/initial_values/core_load''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w cpu_color >> $HOME/.config/goverlay/initial_values/cpu_color''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w gpu_stats >> $HOME/.config/goverlay/initial_values/gpu_stats''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w gpu_temp >> $HOME/.config/goverlay/initial_values/gpu_temp''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w gpu_core_clock >> $HOME/.config/goverlay/initial_values/gpu_core_clock''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w gpu_mem_clock >> $HOME/.config/goverlay/initial_values/gpu_mem_clock''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w gpu_power >> $HOME/.config/goverlay/initial_values/gpu_power''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w vulkan_driver >> $HOME/.config/goverlay/initial_values/vulkan_driver''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w gpu_name >> $HOME/.config/goverlay/initial_values/gpu_name''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w gpu_color >> $HOME/.config/goverlay/initial_values/gpu_color''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w vram >> $HOME/.config/goverlay/initial_values/vram''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w vram_color >> $HOME/.config/goverlay/initial_values/vram''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w ram >> $HOME/.config/goverlay/initial_values/ram''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w ram_color >> $HOME/.config/goverlay/initial_values/ram_color''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w io_read >> $HOME/.config/goverlay/initial_values/io_read''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w io_write >> $HOME/.config/goverlay/initial_values/io_write''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w io_color >> $HOME/.config/goverlay/initial_values/io_color''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w frame_timing >> $HOME/.config/goverlay/initial_values/frame_timing''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w histogram >> $HOME/.config/goverlay/initial_values/histogram''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w frametime_color >> $HOME/.config/goverlay/initial_values/frametime_color''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w time >> $HOME/.config/goverlay/initial_values/time''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w version >> $HOME/.config/goverlay/initial_values/version''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w arch >> $HOME/.config/goverlay/initial_values/arch''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w engine_version >> $HOME/.config/goverlay/initial_values/engine_version''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w media_player >> $HOME/.config/goverlay/initial_values/media_player''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w background_alpha >> $HOME/.config/goverlay/initial_values/background_alpha''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w font_size >> $HOME/.config/goverlay/initial_values/font_size''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w background_color >> $HOME/.config/goverlay/initial_values/background_color''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w position >> $HOME/.config/goverlay/initial_values/position''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w text_color >> $HOME/.config/goverlay/initial_values/text_color''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w toggle_hud >> $HOME/.config/goverlay/initial_values/toggle_hud''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w toggle_logging >> $HOME/.config/goverlay/initial_values/toggle_logging''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w output_file >> $HOME/.config/goverlay/initial_values/output_file''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w media_player_name >> $HOME/.config/goverlay/initial_values/media_player_name''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w no_display >> $HOME/.config/goverlay/initial_values/no_display''', s);


RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w cpu_text >> $HOME/.config/goverlay/initial_values/cpu_text''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w cpu_text | cut -c 10-20 >> $HOME/.config/goverlay/initial_values/cpu_text_value''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w gpu_text >> $HOME/.config/goverlay/initial_values/gpu_text''', s);
RunCommand('bash -c ''cat $HOME/.config/MangoHud/MangoHud.conf | grep -w gpu_text | cut -c 10-20 >> $HOME/.config/goverlay/initial_values/gpu_text_value''', s);
end;

procedure Tgoverlayform.fontsizeComboBoxChange(Sender: TObject);
begin
  if fontsizeCombobox.ItemIndex=3 then
  fontsizeSpinEdit.Enabled:=true
  else
    fontsizeSpinEdit.Enabled:=false;
end;

procedure Tgoverlayform.fontsizeComboBoxKeyPress(Sender: TObject; var Key: char
  );
begin
  //Block keypress on combobox
  key:=#0;
end;

procedure Tgoverlayform.fpslimComboBoxChange(Sender: TObject);
begin
  //Enable spinedit only when custom option is selected
  if fpslimCombobox.ItemIndex=8 then
  fpscustomSpinEdit.Enabled:=true
  else
    fpscustomSpinEdit.Enabled:=false;
end;

procedure Tgoverlayform.fpslimComboBoxKeyPress(Sender: TObject; var Key: char);
begin
  //Block keypress on combobox
  key:=#0;
end;

procedure Tgoverlayform.frametimegraphCheckBoxClick(Sender: TObject);
begin

     if frametimegraphCheckbox.Checked=true then
        begin
        framegraphRadioButton.Enabled := true;   // enable graph radiobutton
        framehistogramRadioButton.Enabled := true;   // enable histogram radiobutton
        framegraphRadioButton.checked := True;   // check graph option by default

        //Preview changes
        frametimelabel.Caption:='Frametime';
        frametimelabel2.Caption:='16.6ms';
        frametimegraphlabel.Caption:='-------------------------------------------';
        end

        else

        begin
        framegraphRadioButton.Enabled := false;   // enable graph radiobutton
        framehistogramRadioButton.Enabled := false;   // enable histogram radiobutton
        framegraphRadioButton.checked := false;   // check graph option by default

        //Preview changes
        frametimelabel.Caption:='';
        frametimelabel2.Caption:='';
        frametimegraphlabel.Caption:='';
        end
     end;


procedure Tgoverlayform.glvsyncComboBoxKeyPress(Sender: TObject; var Key: char);
begin
   //Block keypress on combobox
  key:=#0;
end;

procedure Tgoverlayform.gpuavrloadCheckBoxClick(Sender: TObject);
begin
  //Preview GPU Average Load
  if gpuavrloadCheckbox.Checked=true then
  begin
  gpulabel.Caption:='GPU';
  gpuusagelabel.Caption:='90%'
  end
  else
  begin
  gpulabel.Caption:='';
  gpuusagelabel.Caption:='';
  end;
end;

procedure Tgoverlayform.gpuColorButtonColorChanged(Sender: TObject);
begin
     // Change GPU color labels
    gpulabel.font.Color:=gpucolorButton.ButtonColor;

    //Use function SColorToHtmlColor from unit ATStringProc_htmlColor to change color format to RGB and write value to label
    gpucolorhtml := SColorToHtmlColor(gpucolorButton.ButtonColor);
end;

procedure Tgoverlayform.gpufreqCheckBoxClick(Sender: TObject);
begin
  //Preview GPU Clock
  if gpufreqCheckbox.Checked=true then
  begin
  gpulabel.Caption:='GPU';
  gpuclocklabel.Caption:='1733MHz';
  end
  else
  begin
  gpuclocklabel.Caption:='';
  end;
end;

procedure Tgoverlayform.gputempCheckBoxClick(Sender: TObject);
begin
  //PREVIEW GPU TEMPERATURE
  if gputempCheckbox.Checked=true then
  begin
  gpulabel.Caption:='GPU';
  gputemplabel.Caption:='82ºC';
  end
  else
  begin
  gputemplabel.Caption:='';
  end;
end;

procedure Tgoverlayform.hudonoffComboBoxKeyPress(Sender: TObject; var Key: char
  );
begin
    //Block keypress on combobox
  key:=#0;
end;

procedure Tgoverlayform.loggingComboBoxKeyPress(Sender: TObject; var Key: char);
begin
  //Block keypress on combobox
  key:=#0;
end;

procedure Tgoverlayform.logpathBitBtnClick(Sender: TObject);
begin
  logpathForm.show;
end;

procedure Tgoverlayform.mangohudLabelClick(Sender: TObject);
begin
  //On Select mangohud shape - Change variables
  mangohudsel := true;
  vkbasaltsel := false;

  //On Select mangohud shape - Change colors and unselect vkbasalt
  mangohudShape.Brush.Color:=$00383838;
  mangohudShape.Visible:=true;
  mangohudLabel.Font.color:=clwhite;
  vkbasaltlabel.Font.color:=clgray;
  vkbasaltshape.Visible:=false;

  //Display mangohud panel
  vkbasaltPanel.Visible:=false;
  mangohudPanel.Visible:=true;
end;

procedure Tgoverlayform.mangohudLabelMouseEnter(Sender: TObject);
begin
   //highlight mangohud shape on mouse enter if vkbasalt is selected
  if vkbasaltsel = true  then
    begin
     mangohudShape.Brush.Color:=$00232323;
     mangohudShape.Visible:=true;
    end
  else
  begin
     mangohudShape.Visible:=true;
  end;
end;

procedure Tgoverlayform.mangohudLabelMouseLeave(Sender: TObject);
begin
   //hide mangohud shape on mouse leave if vkbasalt is selected
  if vkbasaltsel = true  then
  mangohudShape.Visible:=false
  else
  mangohudShape.Visible:=true
end;

procedure Tgoverlayform.mediaComboBoxKeyPress(Sender: TObject; var Key: char);
begin
  //Block keypress on combobox
  key:=#0;
end;

procedure Tgoverlayform.ramColorButtonColorChanged(Sender: TObject);
begin
    // Change RAM label color
    ramlabel.font.Color:=ramcolorButton.ButtonColor;

    //Use function SColorToHtmlColor from unit ATStringProc_htmlColor to change color format to RGB and write value to label
    ramcolorhtml := SColorToHtmlColor(ramcolorButton.ButtonColor);
end;

procedure Tgoverlayform.ramusageCheckBoxClick(Sender: TObject);
begin
  //Preview RAM usage
  if ramusageCheckbox.Checked=true then
    begin
     ramlabel.Caption:='RAM';
     ramusagelabel.Caption:='5.99GB'
     end
   else
     begin
     ramlabel.Caption:='';
     ramusagelabel.Caption:=''
  end;
end;

procedure Tgoverlayform.saveasBitBtnClick(Sender: TObject);
begin
  selectdirectorydialog1.Execute;
end;

procedure Tgoverlayform.checkallBitBtnClick(Sender: TObject);
begin
  //Check all hud options
  cpuavrloadCheckbox.Checked:=true;
  cputempCheckbox.Checked:=true;
  cpuloadcoreCheckbox.Checked:=true;
  gpuavrloadCheckbox.Checked:=true;
  gputempCheckbox.Checked:=true;
  gpufreqCheckbox.Checked:=true;
  diskioCheckbox.Checked:=true;
  vramusageCheckbox.Checked:=true;
  ramusageCheckbox.Checked:=true;
  frametimegraphCheckbox.Checked:=true;
  timeCheckbox.Checked:=true;
  archCheckbox.Checked:=true;
  driverversionCheckbox.Checked:=true;
  gpupowerCheckBox.Checked:=true;
  gpumodelCheckBox.Checked:=true;
  gpumemfreqCheckBox.Checked:=true;
  engineversionCheckBox.Checked:=true;

  //Preview all hud options
  cpulabel.Caption:='CPU';
  cpuusagelabel.Caption:='28%';
  cputemplabel.Caption:='71ºC';
  gpulabel.Caption:='GPU';
  gpuusagelabel.Caption:='90%';
  gpulabel.Caption:='GPU';
  gputemplabel.Caption:='82ºC';
  vramlabel.Caption:='VRAM';
  vramusagelabel.Caption:='2.56GB';
  ramlabel.Caption:='RAM';
  ramusagelabel.Caption:='5.99GB';
  frametimelabel.Caption:='Frametime';
  frametimelabel2.Caption:='16.6ms';
  frametimegraphlabel.Caption:='-------------------------------------------';
  timelabel.Caption:='22:40';
  iordrwlabel.caption:='IO RF/RW';
  iordvaluelabel.caption:='32MiB/s';
  iorwvaluelabel.caption:='22MiB/s';
  gpuclocklabel.caption:='1733MHz';
  archlabel.caption:='64bit';
  gpunamelabel.caption:='Geforce GTX 180';
  driverversionlabel.caption:='NVIDIA 440.18.00';
  gpupowerlabel.Caption:='120W';
  gpumemfreqlabel.Caption:='600MHz';
  engineversionlabel.Caption:='1.2.131';
end;

procedure Tgoverlayform.cpunameEditChange(Sender: TObject);
begin
  cpulabel.Caption:=cpunameEdit.Text;
end;

procedure Tgoverlayform.basaltsaveBitBtnClick(Sender: TObject);
begin
    //Create directories
  RunCommand('bash -c ''mkdir -p $HOME/.config/vkBasalt/''', s);


  // Delete old file if it exists
  RunCommand('bash -c ''rm $HOME/.config/vkBasalt/vkBasalt.conf''', s);


  // Create a new file for goverlay
  RunCommand('bash -c ''echo "################### File Generated by GOverlay ###################" >> $HOME/.config/vkBasalt/vkBasalt.conf''', s);

  // Popup a notification
  RunCommand('bash -c ''notify-send vkBasalt_Config_saved''', s);


  //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!   TEMPORARY AJUST !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  // Effects in use

  //CAS
  if (casCheckbox.Checked=true) and (fxaaCheckbox.Checked=false) and (smaaCheckbox.Checked=false) then
  RunCommand('bash -c ''echo "effects = cas" >> $HOME/.config/vkBasalt/vkBasalt.conf''', s);


  //CAS + FXAA
  if (casCheckbox.Checked=true) and (fxaaCheckbox.Checked=true) and (smaaCheckbox.Checked=false) then
  RunCommand('bash -c ''echo "effects = cas:fxaa" >> $HOME/.config/vkBasalt/vkBasalt.conf''', s);

  //CAS + FXAA + SMAA
  if (casCheckbox.Checked=true) and (fxaaCheckbox.Checked=true) and (smaaCheckbox.Checked=true) then
  RunCommand('bash -c ''echo "effects = cas:fxaa:smaa" >> $HOME/.config/vkBasalt/vkBasalt.conf''', s);


  //CAS + SMAA
  if (casCheckbox.Checked=true) and (fxaaCheckbox.Checked=false) and (smaaCheckbox.Checked=true) then
  RunCommand('bash -c ''echo "effects = cas:smaa" >> $HOME/.config/vkBasalt/vkBasalt.conf''', s);



  //FXAA
  if (casCheckbox.Checked=false) and (fxaaCheckbox.Checked=true) and (smaaCheckbox.Checked=false) then
  RunCommand('bash -c ''echo "effects = fxaa" >> $HOME/.config/vkBasalt/vkBasalt.conf''', s);

  //SMAA
  if (casCheckbox.Checked=false) and (fxaaCheckbox.Checked=false) and (smaaCheckbox.Checked=true) then
  RunCommand('bash -c ''echo "effects = smaa" >> $HOME/.config/vkBasalt/vkBasalt.conf''', s);


  //FXAA + SMAA
  if (casCheckbox.Checked=false) and (fxaaCheckbox.Checked=true) and (smaaCheckbox.Checked=true) then
  RunCommand('bash -c ''echo "effects = fxaa:smaa" >> $HOME/.config/vkBasalt/vkBasalt.conf''', s);


  //CAS VALUE
   case castrackbar.Position of
    0:RunCommand('bash -c ''echo "casSharpness=0.0" >> $HOME/.config/vkBasalt/vkBasalt.conf''', s);
    1:RunCommand('bash -c ''echo "casSharpness=0.1" >> $HOME/.config/vkBasalt/vkBasalt.conf''', s);
    2:RunCommand('bash -c ''echo "casSharpness=0.2" >> $HOME/.config/vkBasalt/vkBasalt.conf''', s);
    3:RunCommand('bash -c ''echo "casSharpness=0.3" >> $HOME/.config/vkBasalt/vkBasalt.conf''', s);
    4:RunCommand('bash -c ''echo "casSharpness=0.4" >> $HOME/.config/vkBasalt/vkBasalt.conf''', s);
    5:RunCommand('bash -c ''echo "casSharpness=0.5" >> $HOME/.config/vkBasalt/vkBasalt.conf''', s);
    6:RunCommand('bash -c ''echo "casSharpness=0.6" >> $HOME/.config/vkBasalt/vkBasalt.conf''', s);
    7:RunCommand('bash -c ''echo "casSharpness=0.7" >> $HOME/.config/vkBasalt/vkBasalt.conf''', s);
    8:RunCommand('bash -c ''echo "casSharpness=0.8" >> $HOME/.config/vkBasalt/vkBasalt.conf''', s);
    9:RunCommand('bash -c ''echo "casSharpness=0.9" >> $HOME/.config/vkBasalt/vkBasalt.conf''', s);
    10:RunCommand('bash -c ''echo "casSharpness=1.0" >> $HOME/.config/vkBasalt/vkBasalt.conf''', s);
  end;


   //Copy generated vkBasalt.conf to goverlay config folder
    RunCommand('bash -c ''yes | cp -rf $HOME/.config/vkBasalt/vkBasalt.conf $HOME/.config/goverlay/vkBasalt.conf ''', s);

    // Delete old initial values
    RunCommand('bash -c ''rm -Rf $HOME/.config/goverlay/initial_values/vkbasalteffects''', s);
    RunCommand('bash -c ''rm -Rf $HOME/.config/goverlay/initial_values/casSharpness''', s);
    RunCommand('bash -c ''rm -Rf /tmp/goverlay/initial_values/vkbasalteffects''', s);
    RunCommand('bash -c ''rm -Rf /tmp/goverlay/initial_values/casSharpness''', s);


    //Extract configurations from main config File to the initial_values folder for vkbasalt
  RunCommand('bash -c ''cat $HOME/.config/vkBasalt/vkBasalt.conf | grep -w casSharpness >> $HOME/.config/goverlay/initial_values/casSharpness''', s);
  RunCommand('bash -c ''cat $HOME/.config/vkBasalt/vkBasalt.conf | grep -w effects >> $HOME/.config/goverlay/initial_values/vkbasalteffects''', s);

end;

procedure Tgoverlayform.bottomleftSpeedButtonClick(Sender: TObject);
begin
  //Highlight main button
  bottomleftSpeedbutton.ImageIndex:=2;

  //Clear other buttons
  topleftSpeedbutton.ImageIndex:=-1;
  toprightSpeedbutton.ImageIndex:=-1;
  bottomrightSpeedbutton.ImageIndex:=-1;
end;

procedure Tgoverlayform.bottomrightSpeedButtonClick(Sender: TObject);
begin
   //Highlight main button
   bottomrightSpeedbutton.ImageIndex:=3;


  //Clear other buttons
  topleftSpeedbutton.ImageIndex:=-1;
  toprightSpeedbutton.ImageIndex:=-1;
  bottomleftSpeedbutton.ImageIndex:=-1;
end;

procedure Tgoverlayform.casCheckBoxChange(Sender: TObject);
begin
  if casCheckbox.Checked=true then casTrackbar.Enabled:= true;
end;



procedure Tgoverlayform.casTrackBarChange(Sender: TObject);
begin
  //CAS Preview Image

    case castrackbar.Position of
     0:begin
    cas00Image.Visible:=true;
    cas01Image.Visible:=false;
    cas02Image.Visible:=false;
    cas03Image.Visible:=false;
    cas04Image.Visible:=false;
    cas05Image.Visible:=false;
    cas06Image.Visible:=false;
    cas07Image.Visible:=false;
    cas08Image.Visible:=false;
    cas09Image.Visible:=false;
    cas10Image.Visible:=false;
    end;
     1:begin
    cas00Image.Visible:=false;
    cas01Image.Visible:=true;
    cas02Image.Visible:=false;
    cas03Image.Visible:=false;
    cas04Image.Visible:=false;
    cas05Image.Visible:=false;
    cas06Image.Visible:=false;
    cas07Image.Visible:=false;
    cas08Image.Visible:=false;
    cas09Image.Visible:=false;
    cas10Image.Visible:=false;
    end;
     2:begin
    cas00Image.Visible:=false;
    cas01Image.Visible:=false;
    cas02Image.Visible:=true;
    cas03Image.Visible:=false;
    cas04Image.Visible:=false;
    cas05Image.Visible:=false;
    cas06Image.Visible:=false;
    cas07Image.Visible:=false;
    cas08Image.Visible:=false;
    cas09Image.Visible:=false;
    cas10Image.Visible:=false;
    end;
     3:begin
    cas00Image.Visible:=false;
    cas01Image.Visible:=false;
    cas02Image.Visible:=false;
    cas03Image.Visible:=true;
    cas04Image.Visible:=false;
    cas05Image.Visible:=false;
    cas06Image.Visible:=false;
    cas07Image.Visible:=false;
    cas08Image.Visible:=false;
    cas09Image.Visible:=false;
    cas10Image.Visible:=false;
    end;
     4:begin
    cas00Image.Visible:=false;
    cas01Image.Visible:=false;
    cas02Image.Visible:=false;
    cas03Image.Visible:=false;
    cas04Image.Visible:=true;
    cas05Image.Visible:=false;
    cas06Image.Visible:=false;
    cas07Image.Visible:=false;
    cas08Image.Visible:=false;
    cas09Image.Visible:=false;
    cas10Image.Visible:=false;
    end;
     5:begin
    cas00Image.Visible:=false;
    cas01Image.Visible:=false;
    cas02Image.Visible:=false;
    cas03Image.Visible:=false;
    cas04Image.Visible:=false;
    cas05Image.Visible:=true;
    cas06Image.Visible:=false;
    cas07Image.Visible:=false;
    cas08Image.Visible:=false;
    cas09Image.Visible:=false;
    cas10Image.Visible:=false;
    end;
     6:begin
    cas00Image.Visible:=false;
    cas01Image.Visible:=false;
    cas02Image.Visible:=false;
    cas03Image.Visible:=false;
    cas04Image.Visible:=false;
    cas05Image.Visible:=false;
    cas06Image.Visible:=true;
    cas07Image.Visible:=false;
    cas08Image.Visible:=false;
    cas09Image.Visible:=false;
    cas10Image.Visible:=false;
    end;
     7:begin
    cas00Image.Visible:=false;
    cas01Image.Visible:=false;
    cas02Image.Visible:=false;
    cas03Image.Visible:=false;
    cas04Image.Visible:=false;
    cas05Image.Visible:=false;
    cas06Image.Visible:=false;
    cas07Image.Visible:=true;
    cas08Image.Visible:=false;
    cas09Image.Visible:=false;
    cas10Image.Visible:=false;
    end;
     8:begin
    cas00Image.Visible:=false;
    cas01Image.Visible:=false;
    cas02Image.Visible:=false;
    cas03Image.Visible:=false;
    cas04Image.Visible:=false;
    cas05Image.Visible:=false;
    cas06Image.Visible:=false;
    cas07Image.Visible:=false;
    cas08Image.Visible:=true;
    cas09Image.Visible:=false;
    cas10Image.Visible:=false;
    end;
     9:begin
    cas00Image.Visible:=false;
    cas01Image.Visible:=false;
    cas02Image.Visible:=false;
    cas03Image.Visible:=false;
    cas04Image.Visible:=false;
    cas05Image.Visible:=false;
    cas06Image.Visible:=false;
    cas07Image.Visible:=false;
    cas08Image.Visible:=false;
    cas09Image.Visible:=true;
    cas10Image.Visible:=false;
    end;
     10:begin
    cas00Image.Visible:=false;
    cas01Image.Visible:=false;
    cas02Image.Visible:=false;
    cas03Image.Visible:=false;
    cas04Image.Visible:=false;
    cas05Image.Visible:=false;
    cas06Image.Visible:=false;
    cas07Image.Visible:=false;
    cas08Image.Visible:=false;
    cas09Image.Visible:=false;
    cas10Image.Visible:=true;
    end;
  end;
end;

procedure Tgoverlayform.basaltgeSpeedButtonClick(Sender: TObject);
begin
     case basaltgeSpeedButton.imageIndex of
     0: begin
       basaltgeSpeedButton.ImageIndex:=1; //switch button position
       RunCommand('bash -c ''yes | cp -rf $HOME/.profile $HOME/.profile_vkbasalt.bkp''', s); //backup original .profile file
       RunCommand('bash -c ''echo "export ENABLE_VKBASALT=1" >> $HOME/.profile''', s);  // Activate vkBasalt globally for vulkan apps
       RunCommand('bash -c ''notify-send vkBasalt_Global_Enable_Activated''', s); // Popup a notification
       showmessage ('Restart your system to take effect');
     end;
     1: begin
        basaltgeSpeedButton.ImageIndex:=0;
        RunCommand('bash -c ''yes | cp -rf $HOME/.profile_vkbasalt.bkp $HOME/.profile''', s);  //restore original .profile file
        RunCommand('bash -c ''notify-send Desactivated''', s); // Popup a notification
        showmessage ('Restart your system to take effect');
     end;

  end;
end;

procedure Tgoverlayform.archCheckBoxClick(Sender: TObject);
begin
       //Preview Arch
     if archCheckbox.Checked=true then
       archlabel.Caption:='64bit'
     else
       archlabel.Caption:='';
end;

procedure Tgoverlayform.crosshairsizeBitBtnClick(Sender: TObject);
begin
  crosshairsizeForm.show;
end;


procedure Tgoverlayform.driverversionCheckBoxChange(Sender: TObject);
begin
  //Preview Driver Version
  if driverversionCheckbox.Checked=true then
  driverversionlabel.Caption:='NVIDIA 440.18.00'
  else
  driverversionlabel.Caption:='';
end;

procedure Tgoverlayform.engineversionCheckBoxClick(Sender: TObject);
begin
  //PREVIEW Engine Version
  if engineversionCheckbox.Checked=true then
     engineversionlabel.Caption:='1.2.131'
  else
     engineversionlabel.Caption:=''  ;
  end;


procedure Tgoverlayform.FontcolorButtonColorChanged(Sender: TObject);
begin
   // PREVIEW - Change Font color labels
    gpuusagelabel.font.Color:=FontcolorButton.ButtonColor;
    gputemplabel.font.Color:=FontcolorButton.ButtonColor;
    gpuclocklabel.font.Color:=FontcolorButton.ButtonColor;
    cpuusagelabel.font.Color:=FontcolorButton.ButtonColor;
    cputemplabel.font.Color:=FontcolorButton.ButtonColor;
    iordvaluelabel.font.Color:=FontcolorButton.ButtonColor;
    iorwvaluelabel.font.Color:=FontcolorButton.ButtonColor;
    vramusagelabel.font.Color:=FontcolorButton.ButtonColor;
    ramusagelabel.font.Color:=FontcolorButton.ButtonColor;
    vulkanfpslabel.font.Color:=FontcolorButton.ButtonColor;
    vulkanftimelabel.font.Color:=FontcolorButton.ButtonColor;
    frametimelabel2.font.Color:=FontcolorButton.ButtonColor;

    //Use function SColorToHtmlColor from unit ATStringProc_htmlColor to change color format to RGB and write value to label
    hudfontcolorhtml := SColorToHtmlColor(FontcolorButton.ButtonColor);
end;

procedure Tgoverlayform.framegraphRadioButtonChange(Sender: TObject);
begin

end;

procedure Tgoverlayform.framegraphRadioButtonClick(Sender: TObject);
begin
      //Preview frame time graph
     if framegraphRadiobutton.Checked=true then
     begin
       frametimelabel.Caption:='Frametime';
       frametimelabel2.Caption:='16.6ms';
       frametimegraphlabel.Caption:='-------------------------------------------'
     end
   else
     begin
       frametimelabel.Caption:='';
       frametimelabel2.Caption:='';
       frametimegraphlabel.Caption:=''
     end;
end;

procedure Tgoverlayform.framehistogramRadioButtonClick(Sender: TObject);
begin
   //Preview frame time graph
     if framehistogramRadiobutton.Checked=true then
     begin
       frametimelabel.Caption:='Frametime';
       frametimelabel2.Caption:='16.6ms';
       frametimegraphlabel.Caption:='--||------||||||||||||||||||||------|||----'
     end
   else
     begin
       frametimelabel.Caption:='';
       frametimelabel2.Caption:='';
       frametimegraphlabel.Caption:=''
     end;
end;




procedure Tgoverlayform.hudbackgroundColorButtonColorChanged(Sender: TObject);
begin
   // Change backgroud preview color
    hudbackgroundShape.brush.Color:=hudbackgroundcolorButton.ButtonColor;

    //Use function SColorToHtmlColor from unit ATStringProc_htmlColor to change color format to RGB and write value to label
    hudbackgroundcolorhtml := SColorToHtmlColor(hudbackgroundcolorButton.ButtonColor);
end;

procedure Tgoverlayform.cpuColorButtonColorChanged(Sender: TObject);
begin
    // Change color of labels
    cpulabel.font.Color:=cpucolorButton.ButtonColor;

    //Use function SColorToHtmlColor from unit ATStringProc_htmlColor to change color format to RGB and write value to label
    cpucolorhtml := SColorToHtmlColor(cpucolorButton.ButtonColor);
end;


procedure Tgoverlayform.cpuavrloadCheckBoxClick(Sender: TObject);
begin
   //Preview CPU Average Load
  if cpuavrloadCheckbox.Checked=true then
  begin
  cpulabel.Caption:='CPU';
  cpuusagelabel.Caption:='28%'
  end
  else
  begin
  cpulabel.Caption:='';
  cpuusagelabel.Caption:='';
  end;
end;


procedure Tgoverlayform.cputempCheckBoxClick(Sender: TObject);
begin
  //Preview CPU temperature
  if cputempCheckbox.Checked=true then
  begin
  cpulabel.Caption:='CPU';
  cputemplabel.Caption:='44ºC';
  end
  else
  begin
  cputemplabel.Caption:='';
  end;
end;

procedure Tgoverlayform.diskioCheckBoxClick(Sender: TObject);
begin
      //Preview DISK IO
  if diskioCheckbox.Checked=true then
    begin
     iordrwlabel.caption:='IO RF/RW';
     iordvaluelabel.caption:='32MiB/s';
     iorwvaluelabel.caption:='22MiB/s';
    end
  else
    begin
     iordrwlabel.caption:='';
     iordvaluelabel.caption:='';
     iorwvaluelabel.caption:='';
  end;
end;

procedure Tgoverlayform.frametimegraphColorButtonColorChanged(Sender: TObject);
begin
      // Frame Time Graph color
    frametimegraphlabel.font.Color:=frametimegraphcolorButton.ButtonColor;

    //Use function SColorToHtmlColor from unit ATStringProc_htmlColor to change color format to RGB and write value to label
    frametimegraphcolorhtml := SColorToHtmlColor(frametimegraphcolorButton.ButtonColor);
end;

procedure Tgoverlayform.hudtranspBitBtnClick(Sender: TObject);
begin
  hudbackgroundForm.show;
end;

procedure Tgoverlayform.iordrwColorButtonColorChanged(Sender: TObject);
begin
    // Change color of DISK IO label
    iordrwlabel.font.Color:=iordrwColorButton.ButtonColor;

    //Use function SColorToHtmlColor from unit ATStringProc_htmlColor to change color format to RGB and write value to label
    iordrwcolorhtml := SColorToHtmlColor(iordrwColorButton.ButtonColor);
end;

procedure Tgoverlayform.runBitBtnClick(Sender: TObject);
begin

     //Run vkcube and glxgears
     RunCommand('bash -c ''mangohud vkcube & mangohud glxgears''', s);

    end;


procedure Tgoverlayform.aboutBitBtnClick(Sender: TObject);
begin
  aboutForm.show;
end;




procedure Tgoverlayform.FormCreate(Sender: TObject);
begin
  //Centralize window
  Left:=(Screen.Width-Width)  div 2;
  Top:=(Screen.Height-Height) div 2;

  //Clear hud preview options
  cpulabel.Caption:='';
  cpuusagelabel.Caption:='';
  cputemplabel.Caption:='';
  gpulabel.Caption:='';
  gpuusagelabel.Caption:='';
  gpulabel.Caption:='';
  gputemplabel.Caption:='';
  vramlabel.Caption:='';
  vramusagelabel.Caption:='';
  ramlabel.Caption:='';
  ramusagelabel.Caption:='';
  frametimelabel.Caption:='';
  frametimelabel2.Caption:='';
  frametimegraphlabel.Caption:='';
  timelabel.Caption:='';
  iordrwlabel.caption:='';
  iordvaluelabel.caption:='';
  iorwvaluelabel.caption:='';
  gpuclocklabel.caption:='';
  hudversionlabel.caption:='';
  archlabel.caption:='';
  spotify1label.caption:='';
  spotify2label.caption:='';
  spotify3label.caption:='';
  gpunamelabel.caption:='';
  driverversionlabel.caption:='';
  gpupowerlabel.caption:='';
  gpumemfreqlabel.caption:='';

  //Initialize Variables with stock Mangohud colors
  cpucolorhtml :='#2e97cb';
  gpucolorhtml :='#2e9762';
  iordrwcolorhtml :='#a491d3';
  vramcolorhtml :='#ad64c1';
  ramcolorhtml :='#c26693';
  frametimegraphcolorhtml := '#00ff00';
  crosshaircolorhtml := '#000000';
  hudbackgroundcolorhtml := '#020202';
  hudfontcolorhtml := '#ffffff';

  // Initialize vkBasalt default value
  cas04Image.Visible:=true;
  effectssum:=0;

  // Initialize menu selections
  mangohudsel := true;
  mangohudPanel.Visible:=true;
  vkbasaltsel := false;
  vkbasaltPanel.Visible:=false;


  //Create temporary folder and files for goverlay
  RunCommand('bash -c ''mkdir -p /tmp/goverlay/''', s);
  RunCommand('bash -c ''mkdir -p /tmp/goverlay/initial_values/''', s);
  RunCommand('bash -c ''touch /tmp/goverlay/togglestateValue''', s);



  //Create goverlay config folder
  RunCommand('bash -c ''mkdir -p $HOME/.config/goverlay/initial_values/''', s);


  //Erase dependecy files check
  RunCommand('bash -c ''rm /tmp/goverlay/dependency_mangohud''', s);
  RunCommand('bash -c ''rm /tmp/goverlay/dependency_vkbasalt''', s);

  //Determine toggle position - MangoHUD

     //Read file .profile and store result in tmp folder
     RunCommand('bash -c ''cat $HOME/.profile | grep MANGOHUD=1 >> /tmp/goverlay/togglestateValue''', s);

      // Assign Text file to variable
      AssignFile(togglestateValueVAR, '/tmp/goverlay/togglestateValue'); //
      Reset(togglestateValueVAR);
      Readln(togglestateValueVAR,togglestateValueSTR); //Assign Text file to String
      CloseFile(togglestateValueVAR);

      // Read String with toggle value
      if togglestateValueSTR = 'export MANGOHUD=1' then
      geSpeedbutton.imageIndex:=1
      else
      geSpeedbutton.imageIndex:=0;


      //Determine toggle position - MangoHUD

         //Read file .profile and store result in tmp folder
         RunCommand('bash -c ''cat $HOME/.profile | grep MANGOHUD=1 >> /tmp/goverlay/togglestateValue''', s);

          // Assign Text file to variable
          AssignFile(togglestateValueVAR, '/tmp/goverlay/togglestateValue'); //
          Reset(togglestateValueVAR);
          Readln(togglestateValueVAR,togglestateValueSTR); //Assign Text file to String
          CloseFile(togglestateValueVAR);

          // Read String with toggle value
          if togglestateValueSTR = 'export MANGOHUD=1' then
          geSpeedbutton.imageIndex:=1
          else
          geSpeedbutton.imageIndex:=0;


      //Determine toggle position - vkBasalt

         //Read file .profile and store result in tmp folder
         RunCommand('bash -c ''cat $HOME/.profile | grep ENABLE_VKBASALT=1 >> /tmp/goverlay/togglebasaltstateValue''', s);

          // Assign Text file to variable
          AssignFile(toggleBasaltstateValueVAR, '/tmp/goverlay/togglebasaltstateValue'); //
          Reset(toggleBasaltstateValueVAR);
          Readln(toggleBasaltstateValueVAR,toggleBasaltstateValueSTR); //Assign Text file to String
          CloseFile(toggleBasaltstateValueVAR);

          // Read String with toggle value
          if toggleBasaltstateValueSTR = 'export ENABLE_VKBASALT=1' then
          basaltgeSpeedbutton.imageIndex:=1
          else
          basaltgeSpeedbutton.imageIndex:=0;



   //Define user Home Folder and store in variable userhomepathVAR

    //Read file $HOME variable and store result in tmp folder text file
     RunCommand('bash -c ''echo $HOME >> /tmp/goverlay/userhomepath''', s);

    // Assign Text file to variable
     AssignFile(userhomepathVAR, '/tmp/goverlay/userhomepath'); //
     Reset(userhomepathVAR);
     Readln(userhomepathVAR,userhomepathSTR); //Assign Text file to String
     CloseFile(userhomepathVAR);

   //Stock folder logging
   destinationfolder := userhomepathSTR+'/mangohud_log_ ';

   destfolderpathLabel.Caption:=destinationfolder;




         //Determine Mangohud dependency staus

         //locate MangoHud and store result in tmp folder
       RunCommand('bash -c ''find /usr/share/vulkan/implicit_layer.d/MangoHud.x86_64.json >> /tmp/goverlay/dependency_mangohud''', s);

          // Assign Text file dependency_mangohud to variable mangohudVAR
          AssignFile(mangohudVAR, '/tmp/goverlay/dependency_mangohud');
          Reset(mangohudVAR);
          Readln(mangohudVAR,mangohudSTR); //Assign Text file to String
          CloseFile(mangohudVAR);

          // Read String and store value on mangohuddependencyVALUE based on result
          if mangohudSTR = '/usr/share/vulkan/implicit_layer.d/MangoHud.x86_64.json' then
          mangohuddependencyVALUE := 1
          else
          mangohuddependencyVALUE := 0;


          //Determine vkBasalt dependency staus

          //locate vkBasalt and store result in tmp folder
        RunCommand('bash -c ''find /usr/share/vulkan/implicit_layer.d/vkBasalt.json >> /tmp/goverlay/dependency_vkbasalt''', s);

           // Assign Text file dependency_mangohud to variable mangohudVAR
           AssignFile(vkbasaltVAR, '/tmp/goverlay/dependency_vkbasalt');
           Reset(vkbasaltVAR);
           Readln(vkbasaltVAR,vkbasaltSTR); //Assign Text file to String
           CloseFile(vkbasaltVAR);

           // Read String and store value on vkbasaltdependencyVALUE based on result
           if vkbasaltSTR = '/usr/share/vulkan/implicit_layer.d/vkBasalt.json' then
           vkbasaltdependencyVALUE := 1
           else
           vkbasaltdependencyVALUE := 0;


        //Print Dependency status information
        if (mangohuddependencyVALUE = 1) and ( vkbasaltdependencyVALUE = 1) then
        begin
        dependenciesLabel.Caption:= 'All dependencies OK';
        dependencieSpeedButton.ImageIndex := 0;
        end;

        if (mangohuddependencyVALUE = 0) and ( vkbasaltdependencyVALUE = 1) then
        begin
        dependenciesLabel.Caption:= 'Missing MangoHud';
        dependencieSpeedButton.ImageIndex := 1;
        end;

        if (mangohuddependencyVALUE = 1) and ( vkbasaltdependencyVALUE = 0) then
        begin
        dependenciesLabel.Caption:= 'Missing vkBasalt';
        dependencieSpeedButton.ImageIndex := 1;
        end;

        if (mangohuddependencyVALUE = 0) and ( vkbasaltdependencyVALUE = 0) then
        begin
        dependenciesLabel.Caption:= 'Missing MangoHud vkBasalt';
        dependencieSpeedButton.ImageIndex := 1;
        end;

// ########################################## LOAD INITIAL CONFIG ########################################################

//Delete old tmp files and recreate directory
RunCommand('bash -c ''rm -Rf /tmp/goverlay/initial_values/''', s);
RunCommand('bash -c ''mkdir -p /tmp/goverlay/initial_values/''', s);

//Create dummy files
RunCommand('bash -c ''touch /tmp/goverlay/initial_values/fps_limit''', s);
RunCommand('bash -c ''touch /tmp/goverlay/initial_values/vsync''', s);
RunCommand('bash -c ''touch /tmp/goverlay/initial_values/gl_vsync''', s);
RunCommand('bash -c ''touch /tmp/goverlay/initial_values/cpu_stats''', s);
RunCommand('bash -c ''touch /tmp/goverlay/initial_values/cpu_temp''', s);
RunCommand('bash -c ''touch /tmp/goverlay/initial_values/mem_load''', s);
RunCommand('bash -c ''touch /tmp/goverlay/initial_values/gpu_stats''', s);
RunCommand('bash -c ''touch /tmp/goverlay/initial_values/gpu_temp''', s);
RunCommand('bash -c ''touch /tmp/goverlay/initial_values/gpu_core_clock''', s);
RunCommand('bash -c ''touch /tmp/goverlay/initial_values/gpu_mem_clock''', s);
RunCommand('bash -c ''touch /tmp/goverlay/initial_values/gpu_power''', s);
RunCommand('bash -c ''touch /tmp/goverlay/initial_values/vulkan_driver''', s);
RunCommand('bash -c ''touch /tmp/goverlay/initial_values/gpu_name''', s);
RunCommand('bash -c ''touch /tmp/goverlay/initial_values/vram''', s);
RunCommand('bash -c ''touch /tmp/goverlay/initial_values/ram''', s);
RunCommand('bash -c ''touch /tmp/goverlay/initial_values/io_read''', s);
RunCommand('bash -c ''touch /tmp/goverlay/initial_values/frame_timing''', s);
RunCommand('bash -c ''touch /tmp/goverlay/initial_values/time''', s);
RunCommand('bash -c ''touch /tmp/goverlay/initial_values/version''', s);
RunCommand('bash -c ''touch /tmp/goverlay/initial_values/arch''', s);
RunCommand('bash -c ''touch /tmp/goverlay/initial_values/engine_version''', s);
RunCommand('bash -c ''touch /tmp/goverlay/initial_values/media_player''', s);
RunCommand('bash -c ''touch /tmp/goverlay/initial_values/font_size''', s);
RunCommand('bash -c ''touch /tmp/goverlay/initial_values/position''', s);
RunCommand('bash -c ''touch /tmp/goverlay/initial_values/toggle_hud''', s);
RunCommand('bash -c ''touch /tmp/goverlay/initial_values/toggle_logging''', s);
RunCommand('bash -c ''touch /tmp/goverlay/initial_values/media_player_name''', s);
RunCommand('bash -c ''touch /tmp/goverlay/initial_values/core_load''', s);
RunCommand('bash -c ''touch /tmp/goverlay/initial_values/vkbasalteffects''', s);
RunCommand('bash -c ''touch /tmp/goverlay/initial_values/casSharpness''', s);
RunCommand('bash -c ''touch /tmp/goverlay/initial_values/no_display''', s);
RunCommand('bash -c ''touch /tmp/goverlay/initial_values/cpu_text_value''', s);
RunCommand('bash -c ''touch /tmp/goverlay/initial_values/gpu_text_value''', s);

//Copy files with initial values to tmp folder
RunCommand('bash -c ''yes | cp -rf $HOME/.config/goverlay/initial_values/ /tmp/goverlay/''', s); //backup original .profile file

//Read configuration files

//###################################################################### FPS_LIMIT

// Assign Text file to variable than assign variable to string
AssignFile(initfpslimit, '/tmp/goverlay/initial_values/fps_limit');
Reset(initfpslimit);
Readln(initfpslimit,initfpslimitSTR); //Assign Text file to String
CloseFile(initfpslimit);

case initfpslimitSTR of
'fps_limit=15':fpslimComboBox.ItemIndex:=0;
'fps_limit=30':fpslimComboBox.ItemIndex:=1;
'fps_limit=45':fpslimComboBox.ItemIndex:=2;
'fps_limit=60':fpslimComboBox.ItemIndex:=3;
'fps_limit=90':fpslimComboBox.ItemIndex:=4;
'fps_limit=120':fpslimComboBox.ItemIndex:=5;
'fps_limit=144':fpslimComboBox.ItemIndex:=6;
'#fps_limit=':fpslimComboBox.ItemIndex:=7;
'':fpslimComboBox.ItemIndex:=9;
 end;


//###################################################################### VSYNC

// Assign Text file to variable than assign variable to string
AssignFile(initvsync, '/tmp/goverlay/initial_values/vsync');
Reset(initvsync);
Readln(initvsync,initvsyncSTR); //Assign Text file to String
CloseFile(initvsync);

case initvsyncSTR of
'vsync=0':vsyncComboBox.ItemIndex:=0;
'vsync=1':vsyncComboBox.ItemIndex:=1;
'vsync=2':vsyncComboBox.ItemIndex:=2;
'vsync=3':vsyncComboBox.ItemIndex:=3;
'':vsyncComboBox.ItemIndex:=4;
 end;

//###################################################################### gl_vsync

// Assign Text file to variable than assign variable to string
AssignFile(initgl_vsync, '/tmp/goverlay/initial_values/gl_vsync');
Reset(initgl_vsync);
Readln(initgl_vsync,initgl_vsyncSTR); //Assign Text file to String
CloseFile(initgl_vsync);

case initgl_vsyncSTR of
'gl_vsync=-1':glvsyncComboBox.ItemIndex:=0;
'gl_vsync=0':glvsyncComboBox.ItemIndex:=1;
'gl_vsync=n':glvsyncComboBox.ItemIndex:=2;
'gl_vsync=1':glvsyncComboBox.ItemIndex:=3;
'':glvsyncComboBox.ItemIndex:=4;
 end;

//###################################################################### cpu_stats (cpu load)

// Assign Text file to variable than assign variable to string
AssignFile(initcpustats, '/tmp/goverlay/initial_values/cpu_stats');
Reset(initcpustats);
Readln(initcpustats,initcpustatsSTR); //Assign Text file to String
CloseFile(initcpustats);

case initcpustatsSTR of
'':cpuavrloadCheckbox.Checked:=false;
'cpu_stats':cpuavrloadCheckbox.Checked:=true;
 end;

//###################################################################### cpu_temp

// Assign Text file to variable than assign variable to string
AssignFile(initcputemp, '/tmp/goverlay/initial_values/cpu_temp');
Reset(initcputemp);
Readln(initcputemp,initcputempSTR); //Assign Text file to String
CloseFile(initcputemp);

case initcputempSTR of
'':cputempCheckbox.Checked:=false;
'cpu_temp':cputempCheckbox.Checked:=true;
 end;

//###################################################################### cpu core load (multiple cores)

// Assign Text file to variable than assign variable to string
AssignFile(initcoreload, '/tmp/goverlay/initial_values/core_load');
Reset(initcoreload);
Readln(initcoreload,initcoreloadSTR); //Assign Text file to String
CloseFile(initcoreload);

case initcoreloadSTR of
'':cpuloadcoreCheckbox.Checked:=false;
'core_load':cpuloadcoreCheckbox.Checked:=true;
 end;


//###################################################################### cpu_text_value

// Assign Text file to variable than assign variable to string
AssignFile(initcputextvalue, '/tmp/goverlay/initial_values/cpu_text_value');
Reset(initcputextvalue);
Readln(initcputextvalue,initcputextvalueSTR); //Assign Text file to String
CloseFile(initcputextvalue);

if initcputextvalueSTR = '' then
   cpunameEdit.text:= 'CPU'
   else
   cpunameEdit.text:= initcputextvalueSTR;


//###################################################################### gpu load

// Assign Text file to variable than assign variable to string
AssignFile(initgpustats, '/tmp/goverlay/initial_values/gpu_stats');
Reset(initgpustats);
Readln(initgpustats,initgpustatsSTR); //Assign Text file to String
CloseFile(initgpustats);

case initgpustatsSTR of
'':gpuavrloadCheckbox.Checked:=false;
'gpu_stats':gpuavrloadCheckbox.Checked:=true;
 end;

//###################################################################### gpu load

// Assign Text file to variable than assign variable to string
AssignFile(initgpustats, '/tmp/goverlay/initial_values/gpu_stats');
Reset(initgpustats);
Readln(initgpustats,initgpustatsSTR); //Assign Text file to String
CloseFile(initgpustats);

case initgpustatsSTR of
'':gpuavrloadCheckbox.Checked:=false;
'gpu_stats':gpuavrloadCheckbox.Checked:=true;
 end;


//###################################################################### gpu_temp

// Assign Text file to variable than assign variable to string
AssignFile(initgputemp, '/tmp/goverlay/initial_values/gpu_temp');
Reset(initgputemp);
Readln(initgputemp,initgputempSTR); //Assign Text file to String
CloseFile(initgputemp);

case initgputempSTR of
'':gputempCheckbox.Checked:=false;
'gpu_temp':gputempCheckbox.Checked:=true;
 end;

//###################################################################### gpu_core_clock

// Assign Text file to variable than assign variable to string
AssignFile(initgpucoreclock, '/tmp/goverlay/initial_values/gpu_core_clock');
Reset(initgpucoreclock);
Readln(initgpucoreclock,initgpucoreclockSTR); //Assign Text file to String
CloseFile(initgpucoreclock);

case initgpucoreclockSTR of
'':gpufreqCheckbox.Checked:=false;
'gpu_core_clock':gpufreqCheckbox.Checked:=true;
 end;

//###################################################################### gpu_mem_clock

// Assign Text file to variable than assign variable to string
AssignFile(initgpumemclock, '/tmp/goverlay/initial_values/gpu_mem_clock');
Reset(initgpumemclock);
Readln(initgpumemclock,initgpumemclockSTR); //Assign Text file to String
CloseFile(initgpumemclock);

case initgpumemclockSTR of
'':gpumemfreqCheckbox.Checked:=false;
'gpu_mem_clock':gpumemfreqCheckbox.Checked:=true;
 end;

//###################################################################### gpu_power

// Assign Text file to variable than assign variable to string
AssignFile(initgpupower, '/tmp/goverlay/initial_values/gpu_power');
Reset(initgpupower);
Readln(initgpupower,initgpupowerSTR); //Assign Text file to String
CloseFile(initgpupower);

case initgpupowerSTR of
'':gpupowerCheckbox.Checked:=false;
'gpu_power':gpupowerCheckbox.Checked:=true;
 end;


//###################################################################### gpu_text_value

// Assign Text file to variable than assign variable to string
AssignFile(initgputextvalue, '/tmp/goverlay/initial_values/gpu_text_value');
Reset(initgputextvalue);
Readln(initgputextvalue,initgputextvalueSTR); //Assign Text file to String
CloseFile(initgputextvalue);

if initgputextvalueSTR = '' then
   gpunameEdit.text:= 'GPU'
   else
   gpunameEdit.text:= initgputextvalueSTR;

//###################################################################### vulkan_driver

// Assign Text file to variable than assign variable to string
AssignFile(initvulkandriver, '/tmp/goverlay/initial_values/vulkan_driver');
Reset(initvulkandriver);
Readln(initvulkandriver,initvulkandriverSTR); //Assign Text file to String
CloseFile(initvulkandriver);

case initvulkandriverSTR of
'':driverversionCheckbox.Checked:=false;
'vulkan_driver':driverversionCheckbox.Checked:=true;
 end;

//###################################################################### gpu_name

// Assign Text file to variable than assign variable to string
AssignFile(initgpuname, '/tmp/goverlay/initial_values/gpu_name');
Reset(initgpuname);
Readln(initgpuname,initgpunameSTR); //Assign Text file to String
CloseFile(initgpuname);

case initgpunameSTR of
'':gpumodelCheckbox.Checked:=false;
'gpu_name':gpumodelCheckbox.Checked:=true;
 end;


//###################################################################### vram

// Assign Text file to variable than assign variable to string
AssignFile(initvram, '/tmp/goverlay/initial_values/vram');
Reset(initvram);
Readln(initvram,initvramSTR); //Assign Text file to String
CloseFile(initvram);

case initvramSTR of
'':vramusageCheckbox.Checked:=false;
'vram':vramusageCheckbox.Checked:=true;
 end;

//###################################################################### ram

// Assign Text file to variable than assign variable to string
AssignFile(initram, '/tmp/goverlay/initial_values/ram');
Reset(initram);
Readln(initram,initramSTR); //Assign Text file to String
CloseFile(initram);

case initramSTR of
'':ramusageCheckbox.Checked:=false;
'ram':ramusageCheckbox.Checked:=true;
 end;

//###################################################################### io_read

// Assign Text file to variable than assign variable to string
AssignFile(initioread, '/tmp/goverlay/initial_values/io_read');
Reset(initioread);
Readln(initioread,initioreadSTR); //Assign Text file to String
CloseFile(initioread);

case initioreadSTR of
'':diskioCheckbox.Checked:=false;
'io_read':diskioCheckbox.Checked:=true;
 end;


//###################################################################### frame_timing

// Assign Text file to variable than assign variable to string
AssignFile(initframetiming, '/tmp/goverlay/initial_values/frame_timing');
Reset(initframetiming);
Readln(initframetiming,initframetimingSTR); //Assign Text file to String
CloseFile(initframetiming);

case initframetimingSTR of
'frame_timing=0':frametimegraphCheckbox.Checked:=false;
'frame_timing=1':frametimegraphCheckbox.Checked:=true;
 end;

//###################################################################### frame_timing histogram

// Assign Text file to variable than assign variable to string
//AssignFile(inithistogram, '/tmp/goverlay/initial_values/histogram');
//Reset(inithistogram);
//Readln(inithistogram,inithistogramSTR); //Assign Text file to String
//CloseFile(inithistogram);

//case inithistogramSTR of
//'':framehistogramRadioButton.Checked:=false;
//'histogram':framehistogramRadioButton.Checked:=true;
// end;

//###################################################################### time

// Assign Text file to variable than assign variable to string
AssignFile(inittime, '/tmp/goverlay/initial_values/time');
Reset(inittime);
Readln(inittime,inittimeSTR); //Assign Text file to String
CloseFile(inittime);

case inittimeSTR of
'':timeCheckbox.Checked:=false;
'time':timeCheckbox.Checked:=true;
 end;

//###################################################################### hud version

// Assign Text file to variable than assign variable to string
AssignFile(inithudversion, '/tmp/goverlay/initial_values/version');
Reset(inithudversion);
Readln(inithudversion,inithudversionSTR); //Assign Text file to String
CloseFile(inithudversion);

case inithudversionSTR of
'':hudversionCheckbox.Checked:=false;
'version':hudversionCheckbox.Checked:=true;
 end;

//###################################################################### arch

// Assign Text file to variable than assign variable to string
AssignFile(initarch, '/tmp/goverlay/initial_values/arch');
Reset(initarch);
Readln(initarch,initarchSTR); //Assign Text file to String
CloseFile(initarch);

case initarchSTR of
'':archCheckbox.Checked:=false;
'arch':archCheckbox.Checked:=true;
 end;


//###################################################################### engine_version

// Assign Text file to variable than assign variable to string
AssignFile(initengineversion, '/tmp/goverlay/initial_values/engine_version');
Reset(initengineversion);
Readln(initengineversion,initengineversionSTR); //Assign Text file to String
CloseFile(initengineversion);

case initengineversionSTR of
'':engineversionCheckbox.Checked:=false;
'engine_version':engineversionCheckbox.Checked:=true;
 end;

//###################################################################### media_player

// Assign Text file to variable than assign variable to string
AssignFile(initmediaplayer, '/tmp/goverlay/initial_values/media_player');
Reset(initmediaplayer);
Readln(initmediaplayer,initmediaplayerSTR); //Assign Text file to String
CloseFile(initmediaplayer);

case initmediaplayerSTR of
'':mediaCheckbox.Checked:=false;
'media_player':mediaCheckbox.Checked:=true;
 end;


//###################################################################### font size

// Assign Text file to variable than assign variable to string
AssignFile(initfontsize, '/tmp/goverlay/initial_values/font_size');
Reset(initfontsize);
Readln(initfontsize,initfontsizeSTR); //Assign Text file to String
CloseFile(initfontsize);

case initfontsizeSTR of
'font_size=19':fontsizeComboBox.ItemIndex:=0;
'font_size=24':fontsizeComboBox.ItemIndex:=1;
'font_size=38':fontsizeComboBox.ItemIndex:=2;
// to be implemented custom sizes
 end;


//###################################################################### hud position

// Assign Text file to variable than assign variable to string
AssignFile(initposition, '/tmp/goverlay/initial_values/position');
Reset(initposition);
Readln(initposition,initpositionSTR); //Assign Text file to String
CloseFile(initposition);

case initpositionSTR of
'position=top-left':begin
  //Highlight main button
  topleftSpeedbutton.ImageIndex:=0;

  //Clear other buttons
  toprightSpeedbutton.ImageIndex:=-1;
  bottomleftSpeedbutton.ImageIndex:=-1;
  bottomrightSpeedbutton.ImageIndex:=-1;
  end;

'position=top-right':begin
  //Highlight main button
  toprightSpeedbutton.ImageIndex:=1;

  //Clear other buttons
  topleftSpeedbutton.ImageIndex:=-1;
  bottomleftSpeedbutton.ImageIndex:=-1;
  bottomrightSpeedbutton.ImageIndex:=-1;
  end;

'position=bottom-left':begin
  //Highlight main button
  bottomleftSpeedbutton.ImageIndex:=2;

  //Clear other buttons
  topleftSpeedbutton.ImageIndex:=-1;
  toprightSpeedbutton.ImageIndex:=-1;
  bottomrightSpeedbutton.ImageIndex:=-1;
  end;


 'position=bottom-right':begin
   //Highlight main button
   bottomrightSpeedbutton.ImageIndex:=3;


  //Clear other buttons
  topleftSpeedbutton.ImageIndex:=-1;
  toprightSpeedbutton.ImageIndex:=-1;
  bottomleftSpeedbutton.ImageIndex:=-1;
end;

end;


//###################################################################### no_display (hide hud by default)

// Assign Text file to variable than assign variable to string
AssignFile(initnodisplay, '/tmp/goverlay/initial_values/no_display');
Reset(initnodisplay);
Readln(initnodisplay,initnodisplaySTR); //Assign Text file to String
CloseFile(initnodisplay);

case initnodisplaySTR of
'':hidehudCheckbox.Checked:=false;
'no_display':hidehudCheckbox.Checked:=true;
 end;

//###################################################################### toggle hud ON OFF

// Assign Text file to variable than assign variable to string
AssignFile(inittogglehud, '/tmp/goverlay/initial_values/toggle_hud');
Reset(inittogglehud);
Readln(inittogglehud,inittogglehudSTR); //Assign Text file to String
CloseFile(inittogglehud);

case inittogglehudSTR of
'toggle_hud=Shift_R+F10':hudonoffComboBox.ItemIndex:=0;
'toggle_hud=Shift_R+F11':hudonoffComboBox.ItemIndex:=1;
'toggle_hud=Shift_R+F12':hudonoffComboBox.ItemIndex:=2;
 end;

//###################################################################### toggle logging

// Assign Text file to variable than assign variable to string
AssignFile(inittogglelogging, '/tmp/goverlay/initial_values/toggle_logging');
Reset(inittogglelogging);
Readln(inittogglelogging,inittoggleloggingSTR); //Assign Text file to String
CloseFile(inittogglelogging);

case inittoggleloggingSTR of
'toggle_logging=Shift_L+F1':loggingComboBox.ItemIndex:=0;
'toggle_logging=Shift_L+F2':loggingComboBox.ItemIndex:=1;
'toggle_logging=Shift_L+F3':loggingComboBox.ItemIndex:=2;
 end;

//###################################################################### media player name

// Assign Text file to variable than assign variable to string
AssignFile(initmediaplayername, '/tmp/goverlay/initial_values/media_player_name');
Reset(initmediaplayername);
Readln(initmediaplayername,initmediaplayernameSTR); //Assign Text file to String
CloseFile(initmediaplayername);

case initmediaplayernameSTR of
'media_player_name=spotify':mediaComboBox.ItemIndex:=0;
'media_player_name=vlc':mediaComboBox.ItemIndex:=1;
'media_player_name=audacious':mediaComboBox.ItemIndex:=2;
'media_player_name=cantata':mediaComboBox.ItemIndex:=3;
 end;


//###################################################################### vkbasalt effects

// Assign Text file to variable than assign variable to string
AssignFile(initvkbasalteffects, '/tmp/goverlay/initial_values/vkbasalteffects');
Reset(initvkbasalteffects);
Readln(initvkbasalteffects,initvkbasalteffectsSTR); //Assign Text file to String
CloseFile(initvkbasalteffects);

case initvkbasalteffectsSTR of
'effects = cas':casCheckbox.Checked:=true;
'effects = fxaa':fxaaCheckbox.Checked:=true;
'effects = smaa':smaaCheckbox.Checked:=true;
'effects = cas:fxaa':begin
casCheckbox.Checked:=true;
fxaaCheckbox.Checked:=true;
end;
'effects = cas:fxaa:smaa':begin
casCheckbox.Checked:=true;
fxaaCheckbox.Checked:=true;
smaaCheckbox.Checked:=true;
end;
'effects = cas:smaa':begin
casCheckbox.Checked:=true;
smaaCheckbox.Checked:=true;
end;
'effects = fxaa:smaa':begin
smaaCheckbox.Checked:=true;
fxaaCheckbox.Checked:=true;
end;

end;

//###################################################################### cas Sharpness

// Assign Text file to variable than assign variable to string
AssignFile(initcasSharpness, '/tmp/goverlay/initial_values/casSharpness');
Reset(initcasSharpness);
Readln(initcasSharpness,initcasSharpnessSTR); //Assign Text file to String
CloseFile(initcasSharpness);

case initcasSharpnessSTR of
'casSharpness=0.1':casTrackbar.position:=1;
'casSharpness=0.2':casTrackbar.position:=2;
'casSharpness=0.3':casTrackbar.position:=3;
'casSharpness=0.4':casTrackbar.position:=4;
'casSharpness=0.5':casTrackbar.position:=5;
'casSharpness=0.6':casTrackbar.position:=6;
'casSharpness=0.7':casTrackbar.position:=7;
'casSharpness=0.8':casTrackbar.position:=8;
'casSharpness=0.9':casTrackbar.position:=9;
'casSharpness=1.0':casTrackbar.position:=10;
end;




end;

procedure Tgoverlayform.mediaCheckBoxClick(Sender: TObject);
begin
    //Preview spotify status
     if mediaCheckBox.Checked=true then
     begin
        spotify1label.Caption:='Lonely no more';
        spotify2label.Caption:='Rob Thomas' ;
        spotify3label.Caption:='Something to be' ;
     end
     else
       begin
        spotify1label.Caption:='';
        spotify2label.Caption:='';
        spotify3label.Caption:='';
       end;
end;

procedure Tgoverlayform.geSpeedButtonClick(Sender: TObject);
begin
   case geSpeedButton.imageIndex of
     0: begin
       geSpeedButton.ImageIndex:=1; //switch button position
       RunCommand('bash -c ''yes | cp -rf $HOME/.profile $HOME/.profile.bkp''', s); //backup original .profile file
       RunCommand('bash -c ''echo "export MANGOHUD=1" >> $HOME/.profile''', s);  // Activate MANGOHUD globally for vulkan apps
       RunCommand('bash -c ''notify-send VULKAN_Global_Enable_Activated''', s); // Popup a notification
       showmessage ('Restart your system to take effect');
     end;
     1: begin
        geSpeedButton.ImageIndex:=0;
        RunCommand('bash -c ''yes | cp -rf $HOME/.profile.bkp $HOME/.profile''', s);  //restore original .profile file
        RunCommand('bash -c ''notify-send Desactivated''', s); // Popup a notification
        showmessage ('Restart your system to take effect');
     end;

  end;

   end;

procedure Tgoverlayform.gpumemfreqCheckBoxClick(Sender: TObject);
begin
      //PREVIEW GPU Mem Frequency
  if gpumemfreqCheckbox.Checked=true then
     gpumemfreqlabel.Caption:='600MHz'
  else
     gpumemfreqlabel.Caption:='' ;
  end;


procedure Tgoverlayform.gpumodelCheckBoxClick(Sender: TObject);
begin
      //PREVIEW GPU Model
  if gpumodelCheckbox.Checked=true then
     gpunamelabel.Caption:='GTX 1080'
  else
     gpunamelabel.Caption:='' ;
  end;


procedure Tgoverlayform.gpunameEditChange(Sender: TObject);
begin
   gpulabel.Caption:=gpunameEdit.Text;
end;

procedure Tgoverlayform.gpupowerCheckBoxClick(Sender: TObject);
begin
    //PREVIEW GPU POWER
  if gpupowerCheckbox.Checked=true then
     gpupowerlabel.Caption:='120W'
  else
     gpupowerlabel.Caption:='' ;
  end;

procedure Tgoverlayform.timeCheckBoxClick(Sender: TObject);
begin
   //Preview TIME
     if timeCheckbox.Checked=true then
        timelabel.Caption:='22:30:43'
     else
        timelabel.Caption:='';

end;



procedure Tgoverlayform.topleftSpeedButtonClick(Sender: TObject);
begin
  //Highlight main button
  topleftSpeedbutton.ImageIndex:=0;

  //Clear other buttons
  toprightSpeedbutton.ImageIndex:=-1;
  bottomleftSpeedbutton.ImageIndex:=-1;
  bottomrightSpeedbutton.ImageIndex:=-1;
end;



procedure Tgoverlayform.hudversionCheckBoxClick(Sender: TObject);
begin
     //Preview HudVersion
     if hudversionCheckbox.Checked=true then
       hudversionlabel.Caption:='v0.3.5-31'
     else
        hudversionlabel.Caption:='';
end;

procedure Tgoverlayform.toprightSpeedButtonClick(Sender: TObject);
begin
    //Highlight main button
  toprightSpeedbutton.ImageIndex:=1;

  //Clear other buttons
  topleftSpeedbutton.ImageIndex:=-1;
  bottomleftSpeedbutton.ImageIndex:=-1;
  bottomrightSpeedbutton.ImageIndex:=-1;
end;

procedure Tgoverlayform.vkbasaltLabelClick(Sender: TObject);
begin
  //On Select vkbbasalt shape - Change variables
  mangohudsel := false;
  vkbasaltsel := true;

  //On Select vkbbasalt shape - Change colors and unselect Mangohud
  vkbasaltShape.Brush.Color:=$00383838;
  vkbasaltShape.Visible:=true;
  vkbasaltLabel.Font.color:=clwhite;
  mangohudlabel.Font.color:=clgray;
  mangohudshape.Visible:=false;

  //Display vkbasalt panel
  Mangohudpanel.Visible:=false;
  vkbasaltPanel.Visible:=true;

end;

procedure Tgoverlayform.vkbasaltLabelMouseEnter(Sender: TObject);
begin
  //highlight vkbasalt shape on mouse enter if mangohud is selected
  if mangohudsel = true  then
    begin
     vkbasaltShape.Brush.Color:=$00232323;
     vkbasaltShape.Visible:=true;
    end
  else
  begin
     vkbasaltShape.Visible:=true;
  end;
end;

procedure Tgoverlayform.vkbasaltLabelMouseLeave(Sender: TObject);
begin
  //hide vkbasalt shape on mouse leave if mangohud is selected
  if mangohudsel = true  then
  vkbasaltShape.Visible:=false
  else
  vkbasaltShape.Visible:=true
end;

procedure Tgoverlayform.vramColorButtonColorChanged(Sender: TObject);
begin
    // Change VRAM label color
    vramlabel.font.Color:=vramcolorButton.ButtonColor;

    //Use function SColorToHtmlColor from unit ATStringProc_htmlColor to change color format to RGB and write value to label
    vramcolorhtml := SColorToHtmlColor(vramcolorButton.ButtonColor);
end;

procedure Tgoverlayform.vramusageCheckBoxClick(Sender: TObject);
begin
      //Preview VRAM usage
  if vramusageCheckbox.Checked=true then
    begin
    vramlabel.Caption:='VRAM';
    vramusagelabel.Caption:='2.56GB'
    end
  else
    begin
    vramlabel.Caption:='';
    vramusagelabel.Caption:=''
  end;
end;

procedure Tgoverlayform.vsyncComboBoxKeyPress(Sender: TObject; var Key: char);
begin
   //Block keypress on combobox
  key:=#0;
end;





end.

