require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "android.content.Context"


layout={
  LinearLayout;
  layout_height="fill";
  id="uoo";
  layout_width="fill";
  orientation="vertical";
  {
    LuaWebView;
    layout_height="100%h";
    id="uop";
    layout_width="100%w";
  };
};

--activity.setTitle('AndroLua+')
activity.setContentView(layout)




uop.loadUrl("https://ndhscript.000webhostapp.com/LoginWN/homeNDH.php")

uop.getSettings().setSupportZoom(true);
uop.getSettings().setBuiltInZoomControls(true);
uop.getSettings().setUseWideViewPort(true);
UA="Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36"
uop.getSettings().setUserAgentString(UA);
