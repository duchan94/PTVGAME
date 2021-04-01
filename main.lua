require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "android.content.Context"
import "android.provider.Settings$Secure"
import "android.content.Intent"
import "android.net.Uri"
import "AndLua"



layout={
  FrameLayout;
  layout_height="fill";
  layout_width="fill";
  {
    FrameLayout;
    layout_width="fill";
    layout_height="fill";
    id="page_cdk";
    {
      RelativeLayout;
      layout_width="fill";
      layout_height="fill";
      layout_gravity="center";
      {
        LinearLayout;
        orientation="vertical";
        layout_width="fill";
        background="#FF6E7783";
        layout_height="fill";
        {
          CardView;
          layout_width="fill";
          layout_height="fill";
          background="res/images/bg.jpg";
          layout_gravity="center";
          {
            LinearLayout;
            gravity="center";
            layout_width="fill";
            orientation="vertical";
            layout_height="90%h";
            layout_marginTop="5%h";
            {
              ImageView;
              layout_width="400";
              scaleType="centerCrop";
              layout_height="400";
              background="res/images/float_icon.png";
              id="image_logo_login";
              layout_gravity="center_horizontal";
            };
            {
              TextView;
              textColor="0xFF000000";
              textSize="20sp";
              id="active";
              text="🛡️Please enter your account to login🛡️";
              background="#C000FFFF";
              gravity="center";
              ellipsize="marquee";
              focusableInTouchMode=true;
              focusable=true;
              singleLine=true;
              layout_marginTop="10%h";
              layout_height="5%h";
              layout_width="55%w";
              layout_gravity="center";
            };
            {
              CardView;
              layout_width="80%w";
              Elevation="0";
              layout_height="6%h";
              radius="80";
              CardBackgroundColor="0xC0FFFFFF";
              layout_marginTop="3%h";
              layout_gravity="center";
              {
                EditText;
                id="ussn";
                gravity="center";
                hintTextColor="#FF7D7D7D";
                Hint="Username";
                textColor="#000000";
                layout_height="6%h";
                background="#00000000";
                layout_width="80%w";
                textSize="15sp";
              };
            };
            {
              CardView;
              layout_width="80%w";
              Elevation="0";
              layout_height="6%h";
              radius="80";
              CardBackgroundColor="0xC0FFFFFF";
              layout_marginTop="1%h";
              layout_gravity="center";
              {
                EditText;
                id="paas";
                gravity="center";
                hintTextColor="#FF7D7D7D";
                Hint="Password";
                textColor="0xFF000000";
                layout_height="6%h";
                background="#00000000";
                layout_width="80%w";
                textSize="15sp";
              };
            };
            {
              LinearLayout;
              layout_width="fill";
              layout_height="1%h";
            };
            {
              CardView;
              radius="50";
              layout_width="wrap";
              layout_height="wrap";
              {
                Button;
                text="Login";
                layout_height="wrap";
                backgroundColor="0xFF0000FF";
                textColor="0xFF00FFFF";
                layout_width="30.5%h";
                id="ndhlog";
              };
            };
            {
              LinearLayout;
              layout_width="fill";
              layout_height="0.5%h";
            };
            {
              CardView;
              radius="50";
              layout_width="wrap";
              layout_height="wrap";
              {
                Button;
                text="Register";
                layout_height="wrap";
                backgroundColor="0xFFFF0000";
                textColor="0xFF000000";
                layout_width="20.5%h";
                id="Regg";
              };
            };
          };
        };
      };
    };
  };
};


android_id = Secure.getString(activity.getContentResolver(), Secure.ANDROID_ID)



import "config"
wz="https://ndhscript.000webhostapp.com/LoginWN/"
import "http"

function regDialog()
  redialog={
    LinearLayout;
    background="#FFFFFFFF";
    orientation="vertical";
    {
      TextView;
      textSize="20sp";
      textColor="0xFF0000A1";
      text="Register a New Account";
      layout_gravity="center";
    };
    {
      CardView;
      layout_width="260dp";
      layout_height="50dp";
      layout_gravity="center";
      radius=15;
      elevation="0";
      layout_marginTop="50dp";
      {
        EditText;
        layout_height="fill";
        gravity="left";
        singleLine=true;
        background="#FFF6F7F9";
        layout_width="fill";
        layout_marginLeft="10dp";
        id="regusn";
        hint="Username";
      };
    };
    {
      CardView;
      layout_width="260dp";
      layout_height="50dp";
      layout_gravity="center";
      radius=15;
      elevation="0";
      layout_marginTop="15dp";
      {
        EditText;
        layout_height="fill";
        gravity="left";
        singleLine=true;
        background="#FFF6F7F9";
        layout_width="fill";
        layout_marginLeft="10dp";
        id="regpaas";
        hint=" Password";
      };
    };
    {
      CardView;
      layout_width="260dp";
      layout_height="50dp";
      layout_gravity="center";
      radius=15;
      elevation="0";
      layout_marginTop="15dp";
      {
        EditText;
        layout_height="fill";
        singleLine=true;
        layout_marginLeft="10dp";
        gravity="left";
        background="#FFF6F7F9";
        layout_width="fill";
        id="regpaas2";
        hint="  Confirm Password";
      };
    };
    {
      CardView;
      CardBackgroundColor="0xFFFF0000";
      layout_width="250dp";
      layout_gravity="center";
      layout_height="50dp";
      layout_marginTop="45dp";
      radius=15;
      id="register";
      elevation="0";
      {
        LinearLayout;
        layout_width="fill";
        layout_height="fill";
        gravity="center";
        orientation="horizontal";
        {
          TextView;
          text="Register";
          textColor="0xFFFFFFFF";
          textSize="18sp";
        };
      };
    };
  };
  register_dialogue=AlertDialog.Builder(this)
  .setTitle(" ")
  .setView(loadlayout(redialog))
  .setNeutralButton("Cancel",nil)
  .show()

  function register.onClick()
    if regpaas.Text == regpaas2.Text then
      rusn=regusn.Text
      rpas=regpaas.Text
      jz="0"
      if regusn.Text=="" or regpaas.Text=="" then
        print("Can't leave one empty")
       else
        local dl=ProgressDialog.show(activity,nil,'Please wait!')
        dl.show()
        Http.get(wz.."api/zc.php?&zh="..rusn.."&mm="..rpas,function(code,data)
          print(data)
          if data=="The account exists"then
            Nprompt("Account Already Exists","#FF0000","#FF000000","0","10")
            dl.dismiss()
           elseif data=="registration success"then
            Nprompt("Registration Successful","#41D3BD","#ffffffff","4","10")
            dl.dismiss()
            register_dialogue.dismiss()
           elseif data=="Missing submission value"then
            Nprompt("Creation Failed","#FF0000","#FF000000","0","10")
            dl.dismiss()
            register_dialogue.dismiss()
          end
        end)
      end
     else
      Nprompt("Passwords are different","#FF0000","#FF000000","0","10")
    end
  end
end










function NConstruction()
  Update_Popp=
  {
    LinearLayout;
    layout_height="fill";
    gravity="bottom";
    layout_width="fill";
    background="0x00000000";
    {
      CardView;
      layout_height="210dp";
      radius="50";
      elevation="1";
      layout_marginRight="20dp";
      layout_marginLeft="20dp";
      backgroundColor="#f4f7f7";
      layout_marginBottom="20dp";
      layout_width="match_parent";
      {
        LinearLayout;
        layout_height="55dp";
        gravity="center";
        backgroundColor="0x28FFFFFF";
        layout_width="match_parent";
        {
          LinearLayout;
          layout_gravity="center";
          orientation="vertical";
          {
            TextView;
            textSize="18sp";
            textColor="#000000";
            id="renew_user";
            text="Use card secret";
            layout_gravity="center";
          };

        };
      };
      {
        LinearLayout;
        layout_height="0.6dp";
        backgroundColor="#E0E3DA";

        layout_marginTop="50dp";
        layout_width="match_parent";
      };
      {
        LinearLayout;
        layout_height="-1";
        orientation="vertical";
        backgroundColor="#28FFFFFF";
        layout_marginTop="51dp";
        layout_width="match_parent";
        {
          TextView;
          id="Renewu";
          gravity="center";
          textColor='#FF000000';
          layout_marginTop="8dp";
          text="Sorry no remaining time in your account \n\nYour account is : "..paljj1.."\nYour time remaining : "..paljj2.."";
          textSize="15sp";
          layout_width="match_parent";
        };
        {
          EditText;
          id="ERenewu";
          singleLine=true;
          textColor='#FF000000';
          Hint="Please enter the Keys";
          textSize="13sp";
          HintTextColor='#757575';
          layout_marginLeft="10dp";
          layout_marginTop="28dp";
          layout_width="match_parent";
          visibility=4;
        };
        {
          TextView;
          textSize="13sp";
          textColor="#FF0000";
          layout_marginLeft="20dp";
          layout_width="match_parent";
        };
      };
      {
        LinearLayout;
        layout_height="match_parent";
        backgroundColor="#FFFFFFFF";
        gravity="center";
        layout_marginTop="161dp";
        layout_width="match_parent";
        {
          TextView;
          textSize="17sp";
          textColor="#000000";
          text="Cancel";
          onClick="ignore";
          layout_marginRight="60dp";
        };
        {
          LinearLayout;
          layout_height="20dp";
          backgroundColor="#000000";
          layout_width="1";
        };
        {
          TextView;
          textSize="17sp";
          textColor="#000000";
          text="Recharge";
          onClick="determine";
          layout_marginLeft="60dp";
        };
      };
    };
  };
  local Update_dialogue_Popp=AlertDialog.Builder(this)
  .setView(loadlayout(Update_Popp))
  .setCancelable(true)
  .show()
  renew_user.setText("❌ Prompt ❌")
  import "android.graphics.drawable.ColorDrawable"
  Update_dialogue_Popp.getWindow().setBackgroundDrawable(ColorDrawable(0x00000000));
  function determine
    if ERenewu.visibility == 4 then
      ERenewu.setVisibility(View.VISIBLE)
      Renewu.setVisibility(View.GONE)
      renew_user.setText("Recharge")
     else
      if ERenewu.Text == "" then
        print("Can't leave it empty")
        Update_dialogue_Popp.dismiss()
       else
        ccod=ERenewu.Text
        Http.get(wz.."api/cz.php?&zh="..usn.."&km="..ccod.."&sb="..android_id,function(code,data)
          if data=="Successfully Used No card secret" then
            Nprompt("Successfully used","#41D3BD","#ffffffff","30","10")
           elseif data=="No card secret" then
            Nprompt("Card password does not exist","#FF0000","#FF000000","30","10")
          end
        end)
        Update_dialogue_Popp.dismiss()
      end
    end
  end
  function ignore
    Update_dialogue_Popp.dismiss()
  end
end




function ndhlog.onClick()
  usn=ussn.Text
  pas=paas.Text
  jz="0"
  if ussn.Text=="" or paas.Text=="" then
    print("Can't leave one empty")
   else
    local pref = activity.getSharedPreferences("plexuslogin", Context.MODE_PRIVATE)
    local save = pref.edit()
    save.putString("ndhlog", usn)
    save.commit()
    local dl=ProgressDialog.show(activity,nil,'Please wait!')
    dl.show()
    Http.get(wz.."api/dl.php?&zh="..usn.."&mm="..pas.."&sg="..android_id,function(code,data)
      state = data:match("Login (.-)！")
      paljj1 = data:match("account:【(.-)】")
      paljj2 = data:match("remaining:【(.-)】")
      paljj3 = data:match("Device:【(.-)】")
      if data=="Login Successfully！" then
       elseif data=="Wrong Password!"then
        print("Incorrect password or no account")
        dl.dismiss()
       elseif data=="Account does not exist！Please sign up and log in。"then
        print("Account does not exist")
        dl.dismiss()
       elseif data=="Please enter your account password！"then
        print("Account does not exist")
        dl.dismiss()
      end
      if state =="Successfully" then
        if paljj2 > jz then
          if paljj3 ~= "Error" then
            Nprompt("Login Successfully","#41D3BD","#ffffffff","30","10")
            local pref = activity.getSharedPreferences("plexuslogin", Context.MODE_PRIVATE)
            local save = pref.edit()
            save.putString("expired", paljj2)
            save.putString("human", "1")
            save.commit()
            activity.newActivity("home")
            activity.finish()
           else return Nprompt("the account is not yours","#41D3BD","#ffffffff","30","10") end
         else
          NConstruction(usn,paljj1,paljj2)
          dl.dismiss()
        end
      end
    end)
  end
end


function Regg.onClick()
  regDialog()
end





--[[
import "android.content.DialogInterface"
dialog4 = ProgressDialog.show(this, "prompt", "Logging in",true, true, DialogInterface.OnCancelListener{
  onCancel=function()
    print("Dialog canceled")
  end
}).show() --]]
