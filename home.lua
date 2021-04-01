require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "android.content.*"
import "android.provider.*"
import "android.net.*"
import "android.graphics.*"
import "android.graphics.drawable.*"
import "com.tencent.qq.widget.*"
--import "java.io.File"
import "AndLua"
import "zip4j"

homeLY={
  LinearLayout;
  orientation="vertical";
  background="res/images/bg.jpg";
  layout_height="fill";
  layout_width="fill";
  {
    CardView;
    layout_width="fill";
    CardElevation="3dp";
    layout_height="6.5%h";
    radius="0";
    {
      LinearLayout;
      orientation="horizontal";
      layout_height="6.5%h";
      gravity="center";
      layout_width="fill";
      {
        LinearLayout;
        layout_height="fill";
        layout_width="1%h";
      };
      {
        LinearLayout;
        layout_height="5%h";
        layout_width="5%h";
        gravity="center";
        id="btnProfile";
        {
          CircleImageView;
          layout_width="fill";
          layout_height="fill";
          src="res/images/ic_account.png";
        };
      };
      {
        LinearLayout;
        layout_height="fill";
        layout_width="1%h";
      };
      {
        LinearLayout;
        orientation="vertical";
        layout_height="fill";
        gravity="center_vertical";
        layout_width="fill";
        {
          TextView;
          singleLine=true;
          textSize="19sp";
          id="txtTitle";
          --text="UpLUK";
          layout_height="wrap";
          layout_width="fill";
          textColor="0xFF000000";
        };
        {
          TextView;
          singleLine=true;
          textSize="10sp";
          id="txtTitleSecond";
          --text="facts are very different from what you think. WORK TO SLEEP.";
          layout_height="wrap";
          layout_width="fill";
          textColor="0xFF000000";
        };
      };
    };
  };
  {
    LinearLayout;
    layout_height="2%h";
    layout_width="fill";
  };
  {
    LinearLayout;
    layout_width="fill";
    layout_height="wrap";
    gravity="center_horizontal";
    {
      LinearLayout;
      orientation="horizontal";
      layout_height="25%h";
      gravity="center";
      layout_width="47%h";
      {
        CardView;
        layout_width="22.5%h";
        CardElevation="0dp";
        id="btnStart";
        layout_height="fill";
        radius="5dp";
        backgroundColor="0xB00E6DFF";
        {
          LinearLayout;
          orientation="vertical";
          layout_height="fill";
          gravity="center";
          layout_width="fill";
          {
            ImageView;
            layout_height="7%h";
            layout_width="7%h";
            colorFilter="0xffffffff";
            src="res/images/ic_start.png";
          };
          {
            LinearLayout;
            layout_height="1%h";
            layout_width="fill";
          };
          {
            TextView;
            layout_width="wrap";
            id="txtStart";
            text="START MENU";
            textSize="16sp";
            layout_height="wrap";
            textColor="0xffffffff";
          };
        };
      };
      {
        LinearLayout;
        layout_height="fill";
        layout_width="2%h";
      };
      {
        CardView;
        layout_width="22.5%h";
        CardElevation="0dp";
        id="btnStop";
        layout_height="fill";
        radius="5dp";
        backgroundColor="0xB0F70019";
        {
          LinearLayout;
          orientation="vertical";
          layout_height="fill";
          gravity="center";
          layout_width="fill";
          {
            ImageView;
            layout_height="7%h";
            layout_width="7%h";
            colorFilter="0xffffffff";
            src="res/images/ic_stop.png";
          };
          {
            LinearLayout;
            layout_height="1%h";
            layout_width="fill";
          };
          {
            TextView;
            layout_width="wrap";
            id="txtStop";
            text="STOP MENU";
            textSize="16sp";
            layout_height="wrap";
            textColor="0xffffffff";
          };
        };
      };
    };
  };
  {
    LinearLayout;
    layout_height="2%h";
    layout_width="fill";
  };
  {
    LinearLayout;
    layout_width="fill";
    layout_height="wrap";
    gravity="center_horizontal";
    {
      LinearLayout;
      orientation="horizontal";
      layout_height="10%h";
      gravity="center";
      layout_width="47%h";
      {
        CardView;
        layout_width="47%h";
        CardElevation="0dp";
        id="btnStartG";
        layout_height="fill";
        radius="5dp";
        backgroundColor="0xB032C8C7";
        {
          LinearLayout;
          orientation="vertical";
          layout_height="fill";
          gravity="center";
          layout_width="fill";
          {
            ImageView;
            layout_height="4%h";
            layout_width="4%h";
            colorFilter="0xffffffff";
            src="res/images/ic_start.png";
          };
          {
            LinearLayout;
            layout_height="1%h";
            layout_width="fill";
          };
          {
            TextView;
            layout_width="wrap";
            id="txtStartG";
            text="Run The Game";
            textSize="14sp";
            layout_height="wrap";
            textColor="0xffffffff";
          };
        };
      };
    };
  };
  {
    LinearLayout;
    layout_height="2%h";
    layout_width="fill";
  };
  {
    CardView;
    layout_width="47%h";
    radius="5dp";
    layout_height="wrap";
    layout_gravity="center_horizontal";
    backgroundColor="0xFFFFFFFF";
    {
      LinearLayout;
      orientation="vertical";
      layout_height="wrap";
      layout_width="fill";
      {
        LinearLayout;
        orientation="horizontal";
        id="btnHow";
        layout_height="4%h";
        gravity="center_vertical";
        layout_width="fill";
        {
          LinearLayout;
          layout_height="4%h";
          layout_width="1%h";
        };
        {
          ImageView;
          layout_height="3%h";
          layout_width="3%h";
          colorFilter="0xFF000000";
          src="res/images/ic_help.png";
        };
        {
          LinearLayout;
          layout_height="4%h";
          layout_width="1%h";
        };
        {
          LinearLayout;
          orientation="horizontal";
          layout_height="fill";
          gravity="center_vertical";
          layout_width="fill";
          {
            TextView;
            layout_width="wrap";
            id="txtHow";
            text="How to use?";
            textSize="15sp";
            layout_height="wrap";
            textColor="0xFF000000";
          };
          {
            LinearLayout;
            layout_height="4%h";
            layout_width="0.5%h";
          };
          {
            TextView;
            layout_width="wrap";
            id="txtHowOpen";
            text="Click to Open";
            textSize="12sp";
            layout_height="wrap";
            textColor="0x93000000";
          };
        };
      };
      {
        LinearLayout;
        orientation="horizontal";
        visibility="gone";
        layout_height="wrap";
        layout_width="wrap";
        id="BoxHow";
        {
          LinearLayout;
          layout_height="wrap";
          layout_width="1%h";
        };
        {
          LinearLayout;
          orientation="vertical";
          layout_height="wrap";
          layout_width="wrap";
          {
            TextView;
            layout_width="wrap";
            textColor="0x93000000";
            text="No Root:";
            textSize="14sp";
            layout_height="wrap";
          };
          {
            TextView;
            layout_width="wrap";
            textColor="0x93000000";
            text="Run Cheat - Game inside virtual app";
            textSize="10sp";
            layout_height="wrap";
          };
          {
            LinearLayout;
            layout_height="1%h";
            layout_width="fill";
          };
          {
            TextView;
            layout_width="wrap";
            textColor="0x93000000";
            text="Root:";
            textSize="14sp";
            layout_height="wrap";
          };
          {
            TextView;
            layout_width="wrap";
            textColor="0x93000000";
            text="Give Cheat - Game root permission and magisk hide Game";
            textSize="10sp";
            layout_height="wrap";
          };
          {
            LinearLayout;
            layout_height="1%h";
            layout_width="fill";
          };
        };
      };
    };
  };
};
------------------

floatLY={
  LinearLayout;
  orientation="horizontal";
  id="btnHideOpen";
  layout_height="fill";
  layout_width="fill";
  {
    ImageView;
    src="res/images/float_icon.png";
    id="btnHide";
    layout_height="6%h";
    layout_width="6%h";
  };
  {
    LinearLayout;
    orientation="vertical";
    layout_height="fill";
    visibility="gone";
    id="fullV";
    layout_width="fill";
    {
      CardView;
      layout_height="42%h";
      CardElevation="0dp";
      backgroundColor="0x4B894AF1";
      radius="15";
      layout_width="34%h";
      {
        LinearLayout;
        orientation="vertical";
        layout_height="fill";
        layout_width="fill";
        {
          LinearLayout;
          orientation="vertical";
          gravity="center";
          background="res/images/bg_window.png";
          layout_height="6%h";
          layout_width="fill";
          {
            TextView;
            text="HAITUN";
            layout_height="wrap";
            textColor="0xFF80FF00";
            textSize="16sp";
            layout_width="wrap";
          };
          {
            LinearLayout;
            orientation="horizontal";
            layout_height="wrap";
            layout_width="wrap";
            {
              TextView;
              text="Hack Wild Rift 2.2.0.4026";
              layout_height="wrap";
              textColor="0xFFFFFF00";
              textSize="10sp";
              layout_width="wrap";
            };
            {
              TextView;
              text=" | ";
              layout_height="wrap";
              textColor="0xFFFFFFFF";
              textSize="10sp";
              layout_width="wrap";
            };
            {
              TextView;
              text="Checker";
              id="t1";
              layout_height="wrap";
              textColor="0xFFFFB100";
              textSize="10sp";
              layout_width="wrap";
            };
          };
        };
        {
          LinearLayout;
          layout_height="wrap";
          layout_width="fill";
          {
            ScrollView;
            layout_height="30%h";
            layout_width="fill";
            {
              LinearLayout;
              padding="0.5%h";
              orientation="vertical";
              layout_height="fill";
              layout_width="fill";
              {
                LinearLayout;
                layout_height="6%h";
                layout_width="fill";
                {
                  CheckBox;
                  text=" BYPASS ANTI BAN NEW";
                  layout_height="fill";
                  id="bypass";
                  textColor="0xFF51FF58";
                  layout_width="fill";
                };
              };
               {
                LinearLayout;
                layout_height="6%h";
                layout_width="fill";
                {
                  ToggleButton;
                  text="HACK MAP: OFF";
                  layout_height="fill";
                  textOn="HACK MAP: ON";
                  id="map";
                  textColor="0xFFFFFFFF";
                  textOff="HACK MAP: OFF";
                  layout_width="fill";
                };
              };
              {
                LinearLayout;
                layout_height="6%h";
                layout_width="fill";
                {
                  ToggleButton;
                  text="OFF CAMERA ON FOG";
                  layout_height="fill";
                  textOn="OFF CAMERA ON FOG";
                  id="offfogview";
                  textColor="0xFF000000";
                  textOff="OFF CAMERA ON FOG";
                  layout_width="fill";
                };
              };
              {
                LinearLayout;
                layout_height="6%h";
                layout_width="fill";
                {
                  ToggleButton;
                  text="NO FOG";
                  layout_height="fill";
                  textOn="NO FOG";
                  id="nofog";
                  textColor="0xFF000000";
                  textOff="NO FOG";
                  layout_width="fill";
                };
              };
              {
                LinearLayout;
                layout_height="6%h";
                layout_width="fill";
                {
                  ToggleButton;
                  text="CAMERA VIEW X1";
                  layout_height="fill";
                  textOn="CAMERA VIEW X1";
                  id="x1";
                  textColor="0xFF000000";
                  textOff="CAMERA VIEW X1";
                  layout_width="fill";
                };
              };
              {
                LinearLayout;
                layout_height="6%h";
                layout_width="fill";
                {
                  ToggleButton;
                  text="CAMERA VIEW X1.5";
                  layout_height="fill";
                  textOn="CAMERA VIEW X1.5";
                  id="x15";
                  textColor="0xFF000000";
                  textOff="CAMERA VIEW X1.5";
                  layout_width="fill";
                };
              };
              {
                LinearLayout;
                layout_height="6%h";
                layout_width="fill";
                {
                  ToggleButton;
                  text="CAMERA VIEW X2";
                  layout_height="fill";
                  textOn="CAMERA VIEW X2";
                  id="x2";
                  textColor="0xFF000000";
                  textOff="CAMERA VIEW X2";
                  layout_width="fill";
                };
              };
              {
                LinearLayout;
                layout_height="6%h";
                layout_width="fill";
                {
                  ToggleButton;
                  text="CAMERA VIEW X3";
                  layout_height="fill";
                  textOn="CAMERA VIEW X3";
                  id="x3";
                  textColor="0xFF000000";
                  textOff="CAMERA VIEW X3";
                  layout_width="fill";
                };
              };
            };
          };
        };
        {
          LinearLayout;
          layout_height="wrap";
          layout_width="fill";
          {
            LinearLayout;
            orientation="horizontal";
            gravity="center_vertical";
            backgroundColor="0xB1000000";
            layout_height="6%h";
            layout_width="fill";
            {
              TextView;
              text="❌";
              gravity="center";
              id="close";
              textColor="0xFFFFFFFF";
              layout_height="fill";
              layout_width="17%h";
            };
            {
              TextView;
              text="⛔";
              gravity="center";
              id="min";
              textColor="0xFFFFFFFF";
              layout_height="fill";
              layout_width="17%h";
            };
          };
        };
      };
    };
  };
};




activity.setTheme(android.R.style.Theme_DeviceDefault_Light)
--activity.setTheme(R.AndLua14)
activity.setContentView(loadlayout(homeLY))
activity.ActionBar.hide()
activity.overridePendingTransition(android.R.anim.fade_in,android.R.anim.fade_out)

tickexit=0
function onKeyDown(code,event)
  if string.find(tostring(event),"KEYCODE_BACK") ~= nil then
    if tickexit+3 > tonumber(os.time()) then
      activity.finish()
     else
      print("Press back again to exit app")
      tickexit=tonumber(os.time())
    end
    return true
  end
end

if Settings.canDrawOverlays(activity) then
 else
  dialog=AlertDialog.Builder(this)
  .setTitle("Permission !")
  .setMessage("Floating windows are not allowed,\nplease give floating window permission!")
  .setCancelable(false)
  .setPositiveButton("Allow",
  {onClick=function(v)
      intent=Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION");
      intent.setData(Uri.parse("package:" .. this.getPackageName())); this.startActivity(intent);
    end})
  .show()
end


local login
local pref = activity.getSharedPreferences("plexuslogin", Context.MODE_PRIVATE)
login = pref.getString("ndhlog", "")
exp = pref.getString("expired", "")
human = pref.getString("human", "")

if human == "1" then
  local pref = activity.getSharedPreferences("plexuslogin", Context.MODE_PRIVATE)
  local save = pref.edit()
  save.putString("human", "0")
  save.commit()
 else
  local pref = activity.getSharedPreferences("plexuslogin", Context.MODE_PRIVATE)
  local save = pref.edit()
  save.putString("human", "0")
  save.commit()
  os.exit()
end

txtTitle.setText(login)
txtTitleSecond.setText("Expired : "..exp)

RippleHelper(btnStart).RippleColor=0x09000000
RippleHelper(btnStop).RippleColor=0x09000000
RippleHelper(btnStartG).RippleColor=0x09000000

function btnStartG.onClick()
  MyMenuDialog=MenuDialog(this);
  MyMenuDialog.setTitle("SELECT YOUR WILD RIFT VERSION",MenuDialog.setTextColor.DEFAULT);


  MyMenuDialog.addItem("CLICK OPEN WILD RIFT (TW)",MenuDialog.setTextColor.BLACK,
  {onClick = function()
      if pcall(function() activity.getPackageManager().getPackageInfo("com.riotgames.league.wildrifttw",0) end) then
        this.startActivity(activity.getPackageManager().getLaunchIntentForPackage("com.riotgames.league.wildrifttw"))
       else
        viewIntent = Intent("android.intent.action.VIEW",Uri.parse("https://apkcombo.com/vi-vn/lmht-t%E1%BB%91c-chi%E1%BA%BFn/com.riotgames.league.wildriftvn/download/apk"))
        activity.startActivity(viewIntent)
        print("Can't find the game, please install armeabi-v7a")
      end
    end});

  MyMenuDialog.show();
end


function btnHow.onClick()
  txtHowOpen.setVisibility(View.GONE)
  BoxHow.setVisibility(View.VISIBLE)
end

FloatParameter=activity.getSystemService(Context.WINDOW_SERVICE)
HasFocus=false
FLOATNJENG =WindowManager.LayoutParams()
if Build.VERSION.SDK_INT >= 26 then FLOATNJENG.type =WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY
 else FLOATNJENG.type =WindowManager.LayoutParams.TYPE_SYSTEM_ALERT
end
import "android.graphics.PixelFormat"
FLOATNJENG.format =PixelFormat.RGBA_8888
FLOATNJENG.x = 0
FLOATNJENG.y = 0
FLOATNJENG.flags=WindowManager.LayoutParams().FLAG_NOT_FOCUSABLE
FLOATNJENG.gravity = Gravity.LEFT | Gravity.TOP
FLOATNJENG.width = WindowManager.LayoutParams.WRAP_CONTENT
FLOATNJENG.height = WindowManager.LayoutParams.WRAP_CONTENT
floatWindow = loadlayout(floatLY)
isMax=false

function btnHide.OnTouchListener(v,event)
  if event.getAction()==MotionEvent.ACTION_DOWN then
    firstX=event.getRawX()
    firstY=event.getRawY()
    wmX=FLOATNJENG.x
    wmY=FLOATNJENG.y
   elseif event.getAction()==MotionEvent.ACTION_MOVE then
    FLOATNJENG.x=wmX+(event.getRawX()-firstX)
    FLOATNJENG.y=wmY+(event.getRawY()-firstY)
    FloatParameter.updateViewLayout(floatWindow,FLOATNJENG)
   elseif event.getAction()==MotionEvent.ACTION_UP then
   else
  end return false end

function btnHideOpen.OnTouchListener(v,event)
  if event.getAction()==MotionEvent.ACTION_DOWN then
    firstX=event.getRawX()
    firstY=event.getRawY()
    wmX=FLOATNJENG.x
    wmY=FLOATNJENG.y
   elseif event.getAction()==MotionEvent.ACTION_MOVE then
    FLOATNJENG.x=wmX+(event.getRawX()-firstX)
    FLOATNJENG.y=wmY+(event.getRawY()-firstY)
    FloatParameter.updateViewLayout(floatWindow,FLOATNJENG)
   elseif event.getAction()==MotionEvent.ACTION_UP then
   else
  end return false end

function CircleButton(view,InsideColor,STR,radiu)
  import "android.graphics.drawable.GradientDrawable"
  drawable = GradientDrawable()
  drawable.setShape(GradientDrawable.RECTANGLE)
  drawable.setColor(InsideColor)
  drawable.setStroke(5, STR)
  drawable.setCornerRadii({radiu,radiu,radiu,radiu,radiu,radiu,radiu,radiu});
  view.setBackgroundDrawable(drawable)
end

function btnHide.onClick(v)
  btnHide.setVisibility(View.GONE)
  fullV.setVisibility(View.VISIBLE)
end

function min.onClick(v)
  fullV.setVisibility(View.GONE)
  btnHide.setVisibility(View.VISIBLE)
end

function close.onClick(v)
  if isMax==true then
    isMax=false
    FloatParameter.removeView(floatWindow)
    fullV.setVisibility(View.GONE)
    btnHide.setVisibility(View.VISIBLE)
    print("The menu is closed")
  end
end

function btnStart.onClick()
  if isMax==false then
    isMax=true
    FloatParameter.addView(floatWindow,FLOATNJENG)
   else
    print("Please close the current menu to open a new menu!")
  end
end

function btnStop.onClick()
  if isMax==true then
    isMax=false
    FloatParameter.removeView(floatWindow)
    fullV.setVisibility(View.GONE)
    btnHide.setVisibility(View.VISIBLE)
    print("The menu is closed")
  end
end



--------------

function root(Patch1,MRDmod)
  local check,hgm,number=os.execute("su") if check == true HGM=("su -c ") t1.Text=("ROOT") else HGM=("") t1.Text=("NOROOT") end path=activity.getLuaDir("res.utf") dpath=activity.getLuaDir() pass=("dcihngnod090294") if zip4j.unZipDir(path,dpath,pass)==true then Patch2=activity.getLuaDir(Patch1) os.execute(HGM.."chmod 777 "..Patch2) Runtime.getRuntime().exec(HGM..""..Patch2)MD提示(MRDmod,"#FF009DFF","#FFFFFFFF","9","50") end
end



function bypass.onClick()
  if bypass.checked then
    root("res/711199","ON BYPASS ANTI BAND")
   else
    root("res/711199","OFF BYPASS ANTI BAND")
  end
end

CircleButton(map,0xA0FF0000,0xFF894AF1,10)
function map.onClick()
  if map.checked then
    CircleButton(map,0x5600FF00,0xFF894AF1,10)
    root("res/711199","LOAD 50%")
    root("res/1124p012","ON HACK MAP")
   else
    CircleButton(map,0xA0FF0000,0xFF894AF1,10)
    root("res/k1ll","LOAD 50%")
    root("res/1124p077","OFF HACK MAP")
  end
end

CircleButton(offfogview,0xA0FFFF22,0x7000FF00,10)
function offfogview.onClick()
  root("res/1380","OFF CAMERA VIEW")
  root("res/077709","ON FOG")
end

CircleButton(nofog,0xA0FFFF22,0x7000FF00,10)
function nofog.onClick()
  root("res/120709","NO FOG")
end

CircleButton(x1,0xA0FFFF22,0x7000FF00,10)
function x1.onClick()
  root("res/1381","VIEW X1")
end

CircleButton(x15,0xA0FFFF22,0x7000FF00,10)
function x15.onClick()
  root("res/13815","VIEW X1.5")
end

CircleButton(x2,0xA0FFFF22,0x7000FF00,10)
function x2.onClick()
  root("res/1382","VIEW X2")
end

CircleButton(x3,0xA0FFFF22,0x7000FF00,10)
function x3.onClick()
  root("res/1383","VIEW X3")
end
