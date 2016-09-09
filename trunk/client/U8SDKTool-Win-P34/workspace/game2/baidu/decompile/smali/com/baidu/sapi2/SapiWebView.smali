.class public final Lcom/baidu/sapi2/SapiWebView;
.super Landroid/webkit/WebView;
.source "SapiWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/sapi2/SapiWebView$SMSReceiver;,
        Lcom/baidu/sapi2/SapiWebView$FastRegAction;,
        Lcom/baidu/sapi2/SapiWebView$Command;,
        Lcom/baidu/sapi2/SapiWebView$AbstractInterpreter;,
        Lcom/baidu/sapi2/SapiWebView$OnBackCallback;,
        Lcom/baidu/sapi2/SapiWebView$OnFinishCallback;,
        Lcom/baidu/sapi2/SapiWebView$AuthWidgetCallback;,
        Lcom/baidu/sapi2/SapiWebView$BindWidgetCallback;,
        Lcom/baidu/sapi2/SapiWebView$ChangePwdCallback;,
        Lcom/baidu/sapi2/SapiWebView$UniteVerifyCallback;,
        Lcom/baidu/sapi2/SapiWebView$UniteVerifyHandler;,
        Lcom/baidu/sapi2/SapiWebView$HuaweiHandler;,
        Lcom/baidu/sapi2/SapiWebView$WeixinHandler;,
        Lcom/baidu/sapi2/SapiWebView$LCLoginHandler;,
        Lcom/baidu/sapi2/SapiWebView$NMLoginHandler;,
        Lcom/baidu/sapi2/SapiWebView$VoiceLoginHandler;,
        Lcom/baidu/sapi2/SapiWebView$QuickLoginHandler;,
        Lcom/baidu/sapi2/SapiWebView$FastRegHandler;,
        Lcom/baidu/sapi2/SapiWebView$DefaultHuaweiHandler;,
        Lcom/baidu/sapi2/SapiWebView$DefaultWeixinHandler;,
        Lcom/baidu/sapi2/SapiWebView$DefaultAuthorizationListener;,
        Lcom/baidu/sapi2/SapiWebView$UniteVerifyResultInterpreter;,
        Lcom/baidu/sapi2/SapiWebView$ShareAccountsRemoveInterpreter;,
        Lcom/baidu/sapi2/SapiWebView$ShareAccountsConfigInterpreter;,
        Lcom/baidu/sapi2/SapiWebView$ShareStrategyConfigInterpreter;,
        Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter;,
        Lcom/baidu/sapi2/SapiWebView$UniteVerifyInterpreter;,
        Lcom/baidu/sapi2/SapiWebView$VoiceLoginInterpreter;,
        Lcom/baidu/sapi2/SapiWebView$LecaiLoginInterpreter;,
        Lcom/baidu/sapi2/SapiWebView$NuomiLoginInterpreter;,
        Lcom/baidu/sapi2/SapiWebView$DeviceIdLoginInterpreter;,
        Lcom/baidu/sapi2/SapiWebView$QRcodeLoginInterpreter;,
        Lcom/baidu/sapi2/SapiWebView$HuaweiSSOintrpreter;,
        Lcom/baidu/sapi2/SapiWebView$SinaWeiboWebviewInterpreter;,
        Lcom/baidu/sapi2/SapiWebView$TXWeiboWebviewInterpreter;,
        Lcom/baidu/sapi2/SapiWebView$QzoneWebviewInterpreter;,
        Lcom/baidu/sapi2/SapiWebView$WeiXinSSOInterpreter;,
        Lcom/baidu/sapi2/SapiWebView$SinaSSOInterpreter;,
        Lcom/baidu/sapi2/SapiWebView$RenRenWebviewInterpreter;,
        Lcom/baidu/sapi2/SapiWebView$FeifanWebviewInterpreter;,
        Lcom/baidu/sapi2/SapiWebView$ConfigFastloginFeaturesInterpreter;,
        Lcom/baidu/sapi2/SapiWebView$SmsHandler;,
        Lcom/baidu/sapi2/SapiWebView$TimeoutTask;
    }
.end annotation


# static fields
.field public static final DEFAULT_TIMEOUT_MILLIS:J = 0x15f90L

.field public static final EXTRA_BIND_WIDGET_CONFLICT_DETECT:Lorg/apache/http/NameValuePair;

.field public static final EXTRA_SMS_LOGIN_SHOW_SOCIAL_LOGIN:Lorg/apache/http/NameValuePair;

.field public static final EXTRA_SUPPORT_OVERSEAS_PHONE_NUMBER:Lorg/apache/http/NameValuePair;

.field public static final EXTRA_SUPPORT_VOICE_CODE:Lorg/apache/http/NameValuePair;

.field private static final a:Ljava/lang/String; = "prompt_on_cancel"

.field private static final aj:Ljava/lang/String; = "javascript:(function(){if(window.Pass&&Pass.client&&Pass.client.net){Pass.client.net()}}())"

.field private static final b:I = 0x1

.field private static final c:I = 0x0

.field private static final d:Ljava/lang/String; = "http://www.baidu.com"

.field private static final e:Ljava/lang/String; = "__wp-action"

.field private static final f:Ljava/lang/String; = "renren-offline"

.field private static final g:Ljava/lang/String; = "auth-widget"

.field private static final h:Ljava/lang/String; = "forget-pwd"

.field private static final i:Ljava/lang/String; = "modify-pwd"

.field private static final j:Ljava/lang/String; = "text/html"

.field private static final k:Ljava/lang/String; = "UTF-8"

.field private static final l:Ljava/lang/String; = "<link href=\"\" type=text/css rel=stylesheet id=product-skin>"

.field private static final m:Ljava/lang/String; = "file:///android_asset"

.field private static final n:Ljava/lang/String; = "#login"

.field private static final o:Ljava/lang/String; = "#authPwd"

.field private static final p:Ljava/lang/String; = "#reg"

.field private static final q:Ljava/lang/String; = "#canshare_accounts"

.field private static final r:Ljava/lang/String; = "#sms_login"

.field private static final s:Ljava/lang/String; = "#fastReg"

.field private static final t:Ljava/lang/String; = "#fastRegSuccess"

.field private static final u:Ljava/lang/String; = "#fastRegVerify"

.field private static final v:Ljava/lang/String; = "\u60a8\u7684\u624b\u673a\u88ab\u6076\u610f\u8f6f\u4ef6\u7be1\u6539\uff0c\u53ef\u80fd\u65e0\u6cd5\u4f7f\u7528\u7b2c\u4e09\u65b9\u5e10\u53f7\u767b\u5f55\u767e\u5ea6\uff0c\u8bf7\u66f4\u6362\u5176\u4ed6\u767b\u5f55\u65b9\u5f0f"

.field private static final w:Ljava/lang/String; = "\u53d1\u9001\u4e00\u6761\u77ed\u4fe1\uff0c\u5373\u53ef\u5b8c\u6210\u6ce8\u518c\u3002"

.field private static final x:Ljava/lang/String; = "\u670d\u52a1\u9519\u8bef\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

.field private static final y:Ljava/lang/String; = "\u5fae\u4fe1\u672a\u5b89\u88c5"

.field private static final z:Ljava/lang/String; = "\u672a\u767b\u5f55\u534e\u4e3a\u5e10\u53f7"


# instance fields
.field private A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/sapi2/SapiWebView$AbstractInterpreter;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lcom/baidu/sapi2/SapiConfiguration;

.field private C:Lcom/tencent/tauth/IUiListener;

.field private D:Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

.field private E:Landroid/os/Handler;

.field private F:Landroid/os/Handler;

.field private G:Landroid/os/Handler;

.field private H:Lcom/baidu/sapi2/SapiWebView$FastRegHandler;

.field private I:Lcom/baidu/sapi2/SapiWebView$VoiceLoginHandler;

.field private J:Lcom/baidu/sapi2/SapiWebView$NMLoginHandler;

.field private K:Lcom/baidu/sapi2/SapiWebView$LCLoginHandler;

.field private L:Lcom/baidu/sapi2/SapiWebView$UniteVerifyHandler;

.field private M:Lcom/baidu/sapi2/SapiWebView$WeixinHandler;

.field private N:Lcom/baidu/sapi2/SapiWebView$HuaweiHandler;

.field private O:Lcom/baidu/sapi2/SapiWebView$QuickLoginHandler;

.field private P:Lcom/baidu/sapi2/SapiWebView$ChangePwdCallback;

.field private Q:Lcom/baidu/sapi2/SapiWebView$AuthWidgetCallback;

.field private R:Lcom/baidu/sapi2/SapiWebView$BindWidgetCallback;

.field private S:Lcom/baidu/sapi2/SapiWebView$UniteVerifyCallback;

.field private T:Lcom/baidu/sapi2/plugin/sso/SsoHandler;

.field private U:Landroid/view/View;

.field private V:Landroid/view/View;

.field private W:Landroid/widget/ProgressBar;

.field private aa:Landroid/app/ProgressDialog;

.field private ab:J

.field private ac:Landroid/os/Handler;

.field private ad:Lcom/baidu/sapi2/SapiWebView$TimeoutTask;

.field private ae:Landroid/content/BroadcastReceiver;

.field private af:Lcom/baidu/sapi2/SapiWebView$SmsHandler;

.field private ag:Ljava/lang/Runnable;

.field private ah:Lcom/baidu/sapi2/SapiWebView$OnFinishCallback;

.field private ai:Lcom/baidu/sapi2/SapiWebView$OnBackCallback;

.field private ak:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

.field private al:Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

.field private am:Lcom/baidu/sapi2/callback/SapiCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/sapi2/callback/SapiCallback",
            "<",
            "Lcom/baidu/sapi2/result/LoginResult;",
            ">;"
        }
    .end annotation
.end field

.field private an:Lcom/baidu/sapi2/shell/response/SocialResponse;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 129
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "smsfastlogin"

    const-string v2, "1"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/SapiWebView;->EXTRA_SMS_LOGIN_SHOW_SOCIAL_LOGIN:Lorg/apache/http/NameValuePair;

    .line 135
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "bindToSmsLogin"

    const-string v2, "1"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/SapiWebView;->EXTRA_BIND_WIDGET_CONFLICT_DETECT:Lorg/apache/http/NameValuePair;

    .line 142
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "overseas"

    const-string v2, "1"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/SapiWebView;->EXTRA_SUPPORT_OVERSEAS_PHONE_NUMBER:Lorg/apache/http/NameValuePair;

    .line 148
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "is_voice_sms"

    const-string v2, "1"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/SapiWebView;->EXTRA_SUPPORT_VOICE_CODE:Lorg/apache/http/NameValuePair;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 266
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Ljava/util/Map;

    .line 214
    new-instance v0, Lcom/baidu/sapi2/SapiWebView$1;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/SapiWebView$1;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->ac:Landroid/os/Handler;

    .line 222
    new-instance v0, Lcom/baidu/sapi2/SapiWebView$TimeoutTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/sapi2/SapiWebView$TimeoutTask;-><init>(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/SapiWebView$1;)V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->ad:Lcom/baidu/sapi2/SapiWebView$TimeoutTask;

    .line 267
    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView;->b()V

    .line 268
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 272
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Ljava/util/Map;

    .line 214
    new-instance v0, Lcom/baidu/sapi2/SapiWebView$1;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/SapiWebView$1;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->ac:Landroid/os/Handler;

    .line 222
    new-instance v0, Lcom/baidu/sapi2/SapiWebView$TimeoutTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/sapi2/SapiWebView$TimeoutTask;-><init>(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/SapiWebView$1;)V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->ad:Lcom/baidu/sapi2/SapiWebView$TimeoutTask;

    .line 273
    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView;->b()V

    .line 274
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 278
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Ljava/util/Map;

    .line 214
    new-instance v0, Lcom/baidu/sapi2/SapiWebView$1;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/SapiWebView$1;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->ac:Landroid/os/Handler;

    .line 222
    new-instance v0, Lcom/baidu/sapi2/SapiWebView$TimeoutTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/sapi2/SapiWebView$TimeoutTask;-><init>(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/SapiWebView$1;)V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->ad:Lcom/baidu/sapi2/SapiWebView$TimeoutTask;

    .line 279
    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView;->b()V

    .line 280
    return-void
.end method

.method static synthetic A(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$LCLoginHandler;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->K:Lcom/baidu/sapi2/SapiWebView$LCLoginHandler;

    return-object v0
.end method

.method static synthetic B(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$VoiceLoginHandler;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->I:Lcom/baidu/sapi2/SapiWebView$VoiceLoginHandler;

    return-object v0
.end method

.method static synthetic C(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$UniteVerifyHandler;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->L:Lcom/baidu/sapi2/SapiWebView$UniteVerifyHandler;

    return-object v0
.end method

.method static synthetic D(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$FastRegAction;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->ak:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    return-object v0
.end method

.method static synthetic E(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$UniteVerifyCallback;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->S:Lcom/baidu/sapi2/SapiWebView$UniteVerifyCallback;

    return-object v0
.end method

.method static synthetic F(Lcom/baidu/sapi2/SapiWebView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->V:Landroid/view/View;

    return-object v0
.end method

.method static synthetic G(Lcom/baidu/sapi2/SapiWebView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->U:Landroid/view/View;

    return-object v0
.end method

.method static synthetic H(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$WeixinHandler;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->M:Lcom/baidu/sapi2/SapiWebView$WeixinHandler;

    return-object v0
.end method

.method static synthetic I(Lcom/baidu/sapi2/SapiWebView;)V
    .registers 1
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView;->j()V

    return-void
.end method

.method static synthetic J(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$HuaweiHandler;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->N:Lcom/baidu/sapi2/SapiWebView$HuaweiHandler;

    return-object v0
.end method

.method private a(I)I
    .registers 3
    .param p1, "quickLoginViewBtnAction"    # I

    .prologue
    .line 1066
    if-nez p1, :cond_d

    .line 1067
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->B:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->smsLoginConfig:Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;->flagLoginBtnType:Lcom/baidu/sapi2/utils/enums/Switch;

    invoke-virtual {v0}, Lcom/baidu/sapi2/utils/enums/Switch;->ordinal()I

    move-result p1

    .line 1074
    .end local p1    # "quickLoginViewBtnAction":I
    :cond_c
    :goto_c
    return p1

    .line 1069
    .restart local p1    # "quickLoginViewBtnAction":I
    :cond_d
    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_c

    const/4 v0, 0x3

    if-eq p1, v0, :cond_c

    .line 1072
    const/4 p1, 0x0

    goto :goto_c
.end method

.method static synthetic a(Lcom/baidu/sapi2/SapiWebView;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->aa:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/SapiWebView$HuaweiHandler;)Lcom/baidu/sapi2/SapiWebView$HuaweiHandler;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;
    .param p1, "x1"    # Lcom/baidu/sapi2/SapiWebView$HuaweiHandler;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->N:Lcom/baidu/sapi2/SapiWebView$HuaweiHandler;

    return-object p1
.end method

.method static a(Ljava/lang/String;)Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .registers 13
    .param p0, "html"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2012
    const-string v8, "<client>([\\S\\s]*?)</client>"

    invoke-static {v8, p0}, Lcom/baidu/sapi2/SapiWebView;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2013
    .local v6, "resultXML":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 2014
    const/4 v4, 0x0

    .line 2096
    :cond_f
    :goto_f
    return-object v4

    .line 2017
    :cond_10
    const/4 v4, 0x0

    .line 2020
    .local v4, "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :try_start_11
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 2021
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v11, "UTF-8"

    invoke-interface {v3, v8, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2022
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .local v1, "evnType":I
    move-object v5, v4

    .line 2024
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .local v5, "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :goto_28
    if-eq v1, v9, :cond_1ba

    .line 2025
    packed-switch v1, :pswitch_data_1be

    :cond_2d
    move-object v4, v5

    .line 2083
    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :goto_2e
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_31} :catch_62

    move-result v1

    move-object v5, v4

    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    goto :goto_28

    .line 2027
    :pswitch_34
    :try_start_34
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2028
    .local v7, "tag":Ljava/lang/String;
    const-string v8, "data"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 2029
    if-nez v5, :cond_2d

    .line 2030
    new-instance v4, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    invoke-direct {v4}, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;-><init>()V

    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    goto :goto_2e

    .line 2032
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :cond_48
    if-nez v5, :cond_79

    const-string v8, "error_code"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_79

    .line 2033
    new-instance v4, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    invoke-direct {v4}, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;-><init>()V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_57} :catch_1ae

    .line 2034
    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :try_start_57
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v4, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->errorCode:I
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_61} :catch_62

    goto :goto_2e

    .line 2085
    .end local v1    # "evnType":I
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "tag":Ljava/lang/String;
    :catch_62
    move-exception v0

    .line 2086
    .local v0, "e":Ljava/lang/Throwable;
    :goto_63
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    .line 2088
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_66
    if-eqz v4, :cond_f

    .line 2089
    iget-object v8, v4, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_f

    iget v8, v4, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->errorCode:I

    const/16 v9, -0x64

    if-ne v8, v9, :cond_f

    .line 2092
    iput v10, v4, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->errorCode:I

    goto :goto_f

    .line 2035
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v1    # "evnType":I
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v7    # "tag":Ljava/lang/String;
    :cond_79
    if-nez v5, :cond_8f

    :try_start_7b
    const-string v8, "error_description"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8f

    .line 2036
    new-instance v4, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    invoke-direct {v4}, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;-><init>()V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_88} :catch_1ae

    .line 2037
    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :try_start_88
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->errorMsg:Ljava/lang/String;
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_8e} :catch_62

    goto :goto_2e

    .line 2038
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :cond_8f
    if-eqz v5, :cond_2d

    .line 2039
    :try_start_91
    const-string v8, "errno"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a5

    .line 2040
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->errorCode:I

    move-object v4, v5

    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    goto :goto_2e

    .line 2041
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :cond_a5
    const-string v8, "uname"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b6

    .line 2042
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->username:Ljava/lang/String;

    move-object v4, v5

    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    goto/16 :goto_2e

    .line 2043
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :cond_b6
    const-string v8, "errmsg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c7

    .line 2044
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->errorMsg:Ljava/lang/String;

    move-object v4, v5

    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    goto/16 :goto_2e

    .line 2045
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :cond_c7
    const-string v8, "bduss"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d8

    .line 2046
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    move-object v4, v5

    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    goto/16 :goto_2e

    .line 2047
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :cond_d8
    const-string v8, "ptoken"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e9

    .line 2048
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->ptoken:Ljava/lang/String;

    move-object v4, v5

    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    goto/16 :goto_2e

    .line 2049
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :cond_e9
    const-string v8, "stoken"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_fa

    .line 2050
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->stoken:Ljava/lang/String;

    move-object v4, v5

    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    goto/16 :goto_2e

    .line 2051
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :cond_fa
    const-string v8, "displayname"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10b

    .line 2052
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->displayname:Ljava/lang/String;

    move-object v4, v5

    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    goto/16 :goto_2e

    .line 2053
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :cond_10b
    const-string v8, "uid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11c

    .line 2054
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->uid:Ljava/lang/String;

    move-object v4, v5

    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    goto/16 :goto_2e

    .line 2055
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :cond_11c
    const-string v8, "authsid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13a

    .line 2056
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->authSid:Ljava/lang/String;

    .line 2057
    iget-object v8, v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->authSid:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_138

    move v8, v9

    :goto_133
    iput-boolean v8, v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->newReg:Z

    move-object v4, v5

    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    goto/16 :goto_2e

    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :cond_138
    move v8, v10

    goto :goto_133

    .line 2058
    :cond_13a
    const-string v8, "account"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14d

    .line 2059
    iget-object v8, v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->reloginCredentials:Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->account:Ljava/lang/String;

    move-object v4, v5

    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    goto/16 :goto_2e

    .line 2060
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :cond_14d
    const-string v8, "accounttype"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_160

    .line 2061
    iget-object v8, v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->reloginCredentials:Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->accountType:Ljava/lang/String;

    move-object v4, v5

    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    goto/16 :goto_2e

    .line 2062
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :cond_160
    const-string v8, "password"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_173

    .line 2063
    iget-object v8, v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->reloginCredentials:Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->password:Ljava/lang/String;

    move-object v4, v5

    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    goto/16 :goto_2e

    .line 2064
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :cond_173
    const-string v8, "ubi"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_186

    .line 2065
    iget-object v8, v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->reloginCredentials:Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->ubi:Ljava/lang/String;

    move-object v4, v5

    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    goto/16 :goto_2e

    .line 2066
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :cond_186
    const-string v8, "incomplete_user"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 2067
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 2068
    .local v2, "incompleteUser":Ljava/lang/String;
    const-string v8, "0"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a1

    .line 2069
    sget-object v8, Lcom/baidu/sapi2/utils/enums/AccountType;->NORMAL:Lcom/baidu/sapi2/utils/enums/AccountType;

    iput-object v8, v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->accountType:Lcom/baidu/sapi2/utils/enums/AccountType;

    :goto_19e
    move-object v4, v5

    .line 2075
    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    goto/16 :goto_2e

    .line 2070
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :cond_1a1
    const-string v8, "1"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b2

    .line 2071
    sget-object v8, Lcom/baidu/sapi2/utils/enums/AccountType;->INCOMPLETE_USER:Lcom/baidu/sapi2/utils/enums/AccountType;

    iput-object v8, v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->accountType:Lcom/baidu/sapi2/utils/enums/AccountType;

    goto :goto_19e

    .line 2085
    .end local v2    # "incompleteUser":Ljava/lang/String;
    .end local v7    # "tag":Ljava/lang/String;
    :catch_1ae
    move-exception v0

    move-object v4, v5

    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    goto/16 :goto_63

    .line 2073
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v2    # "incompleteUser":Ljava/lang/String;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v7    # "tag":Ljava/lang/String;
    :cond_1b2
    sget-object v8, Lcom/baidu/sapi2/utils/enums/AccountType;->UNKNOWN:Lcom/baidu/sapi2/utils/enums/AccountType;

    iput-object v8, v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->accountType:Lcom/baidu/sapi2/utils/enums/AccountType;
    :try_end_1b6
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_1b6} :catch_1ae

    goto :goto_19e

    .end local v2    # "incompleteUser":Ljava/lang/String;
    .end local v7    # "tag":Ljava/lang/String;
    :pswitch_1b7
    move-object v4, v5

    .line 2079
    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    goto/16 :goto_2e

    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :cond_1ba
    move-object v4, v5

    .line 2087
    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    goto/16 :goto_66

    .line 2025
    nop

    :pswitch_data_1be
    .packed-switch 0x2
        :pswitch_34
        :pswitch_1b7
    .end packed-switch
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "regex"    # Ljava/lang/String;
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 3347
    const-string v2, ""

    .line 3348
    .local v2, "result":Ljava/lang/String;
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 3349
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object v3, v2

    .line 3356
    .end local v2    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    :goto_d
    return-object v3

    .line 3352
    .end local v3    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    :cond_e
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3353
    .local v0, "matcher":Ljava/util/regex/Matcher;
    :goto_12
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 3354
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    :cond_1d
    move-object v3, v2

    .line 3356
    .end local v2    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_d
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 11
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1118
    .local p2, "extras":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-eqz p2, :cond_6e

    .line 1119
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1120
    .local v3, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    .line 1121
    .local v2, "param":Lorg/apache/http/NameValuePair;
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1123
    :try_start_2b
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2b .. :try_end_47} :catch_48

    goto :goto_b

    .line 1124
    :catch_48
    move-exception v0

    .line 1125
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_b

    .line 1129
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v2    # "param":Lorg/apache/http/NameValuePair;
    :cond_4d
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6e

    .line 1130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/baidu/sapi2/utils/SapiUtils;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1133
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local p1    # "url":Ljava/lang/String;
    :cond_6e
    return-object p1
.end method

.method private a(ILjava/util/List;Z)V
    .registers 7
    .param p1, "quickLoginViewBtnAction"    # I
    .param p3, "customActionBar"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1056
    .local p2, "extras":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountService;->a()Ljava/lang/String;

    move-result-object v0

    .line 1057
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&loginInitType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiWebView;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1058
    if-eqz p3, :cond_42

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->B:Lcom/baidu/sapi2/SapiConfiguration;

    iget-boolean v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->customActionBarEnabled:Z

    if-nez v1, :cond_42

    .line 1059
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&adapter=3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1061
    :cond_42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, p2}, Lcom/baidu/sapi2/SapiWebView;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#canshare_accounts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    .line 1062
    return-void
.end method

.method private a(Landroid/os/Handler;)V
    .registers 5
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 3250
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->ae:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_24

    .line 3251
    new-instance v1, Lcom/baidu/sapi2/SapiWebView$SMSReceiver;

    invoke-direct {v1, p1}, Lcom/baidu/sapi2/SapiWebView$SMSReceiver;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->ae:Landroid/content/BroadcastReceiver;

    .line 3252
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3253
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3254
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 3255
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView;->ae:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3257
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_24
    return-void
.end method

.method static synthetic a(Lcom/baidu/sapi2/SapiWebView;)V
    .registers 1
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView;->f()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/sapi2/SapiWebView;Landroid/os/Handler;)V
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiWebView;->a(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;
    .param p1, "x1"    # Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiWebView;->b(Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/shell/response/SocialResponse;)V
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;
    .param p1, "x1"    # Lcom/baidu/sapi2/shell/response/SocialResponse;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiWebView;->a(Lcom/baidu/sapi2/shell/response/SocialResponse;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/utils/enums/AccountType;)V
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;
    .param p1, "x1"    # Lcom/baidu/sapi2/utils/enums/AccountType;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiWebView;->a(Lcom/baidu/sapi2/utils/enums/AccountType;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/sapi2/SapiWebView;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/sapi2/SapiWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V
    .registers 5
    .param p1, "response"    # Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    .prologue
    .line 1489
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->al:Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    .line 1490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiAccountService;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&authsid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->authSid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&bduss="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&ptoken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->ptoken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&stoken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->stoken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#fastRegSuccess"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1496
    .local v0, "setPwdUrl":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    .line 1497
    return-void
.end method

.method private a(Lcom/baidu/sapi2/shell/response/SocialResponse;)V
    .registers 5
    .param p1, "response"    # Lcom/baidu/sapi2/shell/response/SocialResponse;

    .prologue
    .line 2919
    if-nez p1, :cond_3

    .line 2964
    :cond_2
    :goto_2
    return-void

    .line 2923
    :cond_3
    new-instance v0, Lcom/baidu/sapi2/SapiAccount;

    invoke-direct {v0}, Lcom/baidu/sapi2/SapiAccount;-><init>()V

    .line 2924
    .local v0, "sapiAccount":Lcom/baidu/sapi2/SapiAccount;
    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SocialResponse;->uid:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    .line 2925
    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SocialResponse;->bduss:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    .line 2926
    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SocialResponse;->displayname:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    .line 2927
    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SocialResponse;->username:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    .line 2928
    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SocialResponse;->stoken:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    .line 2929
    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SocialResponse;->ptoken:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    .line 2930
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    .line 2931
    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SocialResponse;->socialType:Lcom/baidu/sapi2/utils/enums/SocialType;

    iget-object v2, p1, Lcom/baidu/sapi2/shell/response/SocialResponse;->socialPortraitUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/SapiAccount;->a(Lcom/baidu/sapi2/utils/enums/SocialType;Ljava/lang/String;)V

    .line 2933
    const-string v1, "account_type"

    iget-object v2, p1, Lcom/baidu/sapi2/shell/response/SocialResponse;->accountType:Lcom/baidu/sapi2/utils/enums/AccountType;

    invoke-virtual {v2}, Lcom/baidu/sapi2/utils/enums/AccountType;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/SapiAccount;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2934
    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->isValidAccount(Lcom/baidu/sapi2/SapiAccount;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 2935
    const/4 v1, 0x0

    iput v1, p1, Lcom/baidu/sapi2/shell/response/SocialResponse;->errorCode:I

    .line 2938
    :cond_49
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->D:Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    if-eqz v1, :cond_2

    .line 2939
    iget v1, p1, Lcom/baidu/sapi2/shell/response/SocialResponse;->errorCode:I

    if-eqz v1, :cond_58

    iget v1, p1, Lcom/baidu/sapi2/shell/response/SocialResponse;->errorCode:I

    const v2, 0x1adb0

    if-ne v1, v2, :cond_61

    .line 2941
    :cond_58
    new-instance v1, Lcom/baidu/sapi2/SapiWebView$30;

    invoke-direct {v1, p0, v0}, Lcom/baidu/sapi2/SapiWebView$30;-><init>(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/SapiAccount;)V

    invoke-virtual {p0, v1}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 2955
    :cond_61
    new-instance v1, Lcom/baidu/sapi2/SapiWebView$31;

    invoke-direct {v1, p0, p1}, Lcom/baidu/sapi2/SapiWebView$31;-><init>(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/shell/response/SocialResponse;)V

    invoke-virtual {p0, v1}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method private a(Lcom/baidu/sapi2/utils/enums/AccountType;)V
    .registers 9
    .param p1, "accountType"    # Lcom/baidu/sapi2/utils/enums/AccountType;

    .prologue
    .line 2970
    :try_start_0
    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView;->D:Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onSuccess"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/baidu/sapi2/utils/enums/AccountType;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2971
    .local v1, "method":Ljava/lang/reflect/Method;
    const-class v2, Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 2972
    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView;->D:Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    invoke-virtual {v2, p1}, Lcom/baidu/sapi2/shell/listener/AuthorizationListener;->onSuccess(Lcom/baidu/sapi2/utils/enums/AccountType;)V
    :try_end_25
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_25} :catch_26

    .line 2979
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_25
    return-void

    .line 2975
    :catch_26
    move-exception v0

    .line 2976
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    .line 2978
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_2a
    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView;->D:Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    invoke-virtual {v2}, Lcom/baidu/sapi2/shell/listener/AuthorizationListener;->onSuccess()V

    goto :goto_25
.end method

.method static synthetic b(Lcom/baidu/sapi2/SapiWebView;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->ac:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;
    .param p1, "x1"    # Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->al:Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    return-object p1
.end method

.method static synthetic b(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/shell/response/SocialResponse;)Lcom/baidu/sapi2/shell/response/SocialResponse;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;
    .param p1, "x1"    # Lcom/baidu/sapi2/shell/response/SocialResponse;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->an:Lcom/baidu/sapi2/shell/response/SocialResponse;

    return-object p1
.end method

.method static b(Ljava/lang/String;)Lcom/baidu/sapi2/shell/response/SocialResponse;
    .registers 11
    .param p0, "html"    # Ljava/lang/String;

    .prologue
    .line 2107
    const-string v8, "<client>([\\S\\s]*?)</client>"

    invoke-static {v8, p0}, Lcom/baidu/sapi2/SapiWebView;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2108
    .local v6, "resultXML":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 2109
    const/4 v4, 0x0

    .line 2184
    :goto_d
    return-object v4

    .line 2112
    :cond_e
    const/4 v4, 0x0

    .line 2115
    .local v4, "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    :try_start_f
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 2116
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v9, "UTF-8"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2117
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .local v1, "evnType":I
    move-object v5, v4

    .line 2119
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .local v5, "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    :goto_26
    const/4 v8, 0x1

    if-eq v1, v8, :cond_1ab

    .line 2120
    packed-switch v1, :pswitch_data_1ae

    :cond_2c
    move-object v4, v5

    .line 2178
    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    :goto_2d
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_30} :catch_61

    move-result v1

    move-object v5, v4

    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    goto :goto_26

    .line 2122
    :pswitch_33
    :try_start_33
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2123
    .local v7, "tag":Ljava/lang/String;
    const-string v8, "data"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_47

    .line 2124
    if-nez v5, :cond_2c

    .line 2125
    new-instance v4, Lcom/baidu/sapi2/shell/response/SocialResponse;

    invoke-direct {v4}, Lcom/baidu/sapi2/shell/response/SocialResponse;-><init>()V

    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    goto :goto_2d

    .line 2127
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    :cond_47
    if-nez v5, :cond_66

    const-string v8, "error_code"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_66

    .line 2128
    new-instance v4, Lcom/baidu/sapi2/shell/response/SocialResponse;

    invoke-direct {v4}, Lcom/baidu/sapi2/shell/response/SocialResponse;-><init>()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_56} :catch_19f

    .line 2129
    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    :try_start_56
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v4, Lcom/baidu/sapi2/shell/response/SocialResponse;->errorCode:I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_60} :catch_61

    goto :goto_2d

    .line 2180
    .end local v1    # "evnType":I
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "tag":Ljava/lang/String;
    :catch_61
    move-exception v0

    .line 2181
    .local v0, "e":Ljava/lang/Exception;
    :goto_62
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_d

    .line 2130
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v1    # "evnType":I
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v7    # "tag":Ljava/lang/String;
    :cond_66
    if-nez v5, :cond_7c

    :try_start_68
    const-string v8, "error_description"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7c

    .line 2131
    new-instance v4, Lcom/baidu/sapi2/shell/response/SocialResponse;

    invoke-direct {v4}, Lcom/baidu/sapi2/shell/response/SocialResponse;-><init>()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_75} :catch_19f

    .line 2132
    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    :try_start_75
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/baidu/sapi2/shell/response/SocialResponse;->errorMsg:Ljava/lang/String;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7b} :catch_61

    goto :goto_2d

    .line 2133
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    :cond_7c
    if-eqz v5, :cond_2c

    .line 2134
    :try_start_7e
    const-string v8, "error_code"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_92

    .line 2135
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v5, Lcom/baidu/sapi2/shell/response/SocialResponse;->errorCode:I

    move-object v4, v5

    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    goto :goto_2d

    .line 2136
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    :cond_92
    const-string v8, "error_description"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a2

    .line 2137
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/baidu/sapi2/shell/response/SocialResponse;->errorMsg:Ljava/lang/String;

    move-object v4, v5

    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    goto :goto_2d

    .line 2138
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    :cond_a2
    const-string v8, "is_binded"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b9

    .line 2139
    const-string v8, "1"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v5, Lcom/baidu/sapi2/shell/response/SocialResponse;->isBinded:Z

    move-object v4, v5

    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    goto/16 :goto_2d

    .line 2140
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    :cond_b9
    const-string v8, "display_name"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ca

    .line 2141
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/baidu/sapi2/shell/response/SocialResponse;->displayname:Ljava/lang/String;

    move-object v4, v5

    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    goto/16 :goto_2d

    .line 2142
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    :cond_ca
    const-string v8, "passport_uname"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_db

    .line 2143
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/baidu/sapi2/shell/response/SocialResponse;->username:Ljava/lang/String;

    move-object v4, v5

    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    goto/16 :goto_2d

    .line 2144
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    :cond_db
    const-string v8, "bduid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ec

    .line 2145
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/baidu/sapi2/shell/response/SocialResponse;->uid:Ljava/lang/String;

    move-object v4, v5

    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    goto/16 :goto_2d

    .line 2146
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    :cond_ec
    const-string v8, "bduss"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_fd

    .line 2147
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/baidu/sapi2/shell/response/SocialResponse;->bduss:Ljava/lang/String;

    move-object v4, v5

    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    goto/16 :goto_2d

    .line 2148
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    :cond_fd
    const-string v8, "ptoken"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10e

    .line 2149
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/baidu/sapi2/shell/response/SocialResponse;->ptoken:Ljava/lang/String;

    move-object v4, v5

    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    goto/16 :goto_2d

    .line 2150
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    :cond_10e
    const-string v8, "os_username"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11f

    .line 2151
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/baidu/sapi2/shell/response/SocialResponse;->socialUname:Ljava/lang/String;

    move-object v4, v5

    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    goto/16 :goto_2d

    .line 2152
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    :cond_11f
    const-string v8, "os_headurl"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_130

    .line 2153
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/baidu/sapi2/shell/response/SocialResponse;->socialPortraitUrl:Ljava/lang/String;

    move-object v4, v5

    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    goto/16 :goto_2d

    .line 2154
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    :cond_130
    const-string v8, "os_type"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_149

    .line 2155
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/baidu/sapi2/utils/enums/SocialType;->getSocialType(I)Lcom/baidu/sapi2/utils/enums/SocialType;

    move-result-object v8

    iput-object v8, v5, Lcom/baidu/sapi2/shell/response/SocialResponse;->socialType:Lcom/baidu/sapi2/utils/enums/SocialType;

    move-object v4, v5

    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    goto/16 :goto_2d

    .line 2157
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    :cond_149
    const-string v8, "notice_offline"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_160

    .line 2158
    const-string v8, "1"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v5, Lcom/baidu/sapi2/shell/response/SocialResponse;->offlineNotice:Z

    move-object v4, v5

    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    goto/16 :goto_2d

    .line 2159
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    :cond_160
    const-string v8, "guidebind"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_177

    .line 2160
    const-string v8, "1"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v5, Lcom/baidu/sapi2/shell/response/SocialResponse;->bindGuide:Z

    move-object v4, v5

    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    goto/16 :goto_2d

    .line 2161
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    :cond_177
    const-string v8, "incomplete_user"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 2162
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 2163
    .local v2, "incompleteUser":Ljava/lang/String;
    const-string v8, "0"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_192

    .line 2164
    sget-object v8, Lcom/baidu/sapi2/utils/enums/AccountType;->NORMAL:Lcom/baidu/sapi2/utils/enums/AccountType;

    iput-object v8, v5, Lcom/baidu/sapi2/shell/response/SocialResponse;->accountType:Lcom/baidu/sapi2/utils/enums/AccountType;

    :goto_18f
    move-object v4, v5

    .line 2170
    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    goto/16 :goto_2d

    .line 2165
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    :cond_192
    const-string v8, "1"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a3

    .line 2166
    sget-object v8, Lcom/baidu/sapi2/utils/enums/AccountType;->INCOMPLETE_USER:Lcom/baidu/sapi2/utils/enums/AccountType;

    iput-object v8, v5, Lcom/baidu/sapi2/shell/response/SocialResponse;->accountType:Lcom/baidu/sapi2/utils/enums/AccountType;

    goto :goto_18f

    .line 2180
    .end local v2    # "incompleteUser":Ljava/lang/String;
    .end local v7    # "tag":Ljava/lang/String;
    :catch_19f
    move-exception v0

    move-object v4, v5

    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    goto/16 :goto_62

    .line 2168
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v2    # "incompleteUser":Ljava/lang/String;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v7    # "tag":Ljava/lang/String;
    :cond_1a3
    sget-object v8, Lcom/baidu/sapi2/utils/enums/AccountType;->UNKNOWN:Lcom/baidu/sapi2/utils/enums/AccountType;

    iput-object v8, v5, Lcom/baidu/sapi2/shell/response/SocialResponse;->accountType:Lcom/baidu/sapi2/utils/enums/AccountType;
    :try_end_1a7
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_1a7} :catch_19f

    goto :goto_18f

    .end local v2    # "incompleteUser":Ljava/lang/String;
    .end local v7    # "tag":Ljava/lang/String;
    :pswitch_1a8
    move-object v4, v5

    .line 2174
    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    goto/16 :goto_2d

    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    :cond_1ab
    move-object v4, v5

    .line 2182
    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    .restart local v4    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    goto/16 :goto_d

    .line 2120
    :pswitch_data_1ae
    .packed-switch 0x2
        :pswitch_33
        :pswitch_1a8
    .end packed-switch
.end method

.method private b()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 330
    const-wide/32 v2, 0x15f90

    iput-wide v2, p0, Lcom/baidu/sapi2/SapiWebView;->ab:J

    .line 331
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->B:Lcom/baidu/sapi2/SapiConfiguration;

    .line 333
    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView;->d()V

    .line 334
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_2d

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_2d

    .line 335
    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {p0, v1}, Lcom/baidu/sapi2/SapiWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 336
    const-string v1, "accessibility"

    invoke-virtual {p0, v1}, Lcom/baidu/sapi2/SapiWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 337
    const-string v1, "accessibilityTraversal"

    invoke-virtual {p0, v1}, Lcom/baidu/sapi2/SapiWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 341
    :cond_2d
    new-instance v1, Lcom/baidu/sapi2/SapiWebView$2;

    invoke-direct {v1, p0}, Lcom/baidu/sapi2/SapiWebView$2;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-virtual {p0, v1}, Lcom/baidu/sapi2/SapiWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 523
    new-instance v1, Lcom/baidu/sapi2/SapiWebView$3;

    invoke-direct {v1, p0}, Lcom/baidu/sapi2/SapiWebView$3;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-virtual {p0, v1}, Lcom/baidu/sapi2/SapiWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 601
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->D:Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    if-nez v1, :cond_48

    .line 602
    new-instance v1, Lcom/baidu/sapi2/SapiWebView$DefaultAuthorizationListener;

    invoke-direct {v1, p0}, Lcom/baidu/sapi2/SapiWebView$DefaultAuthorizationListener;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    iput-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->D:Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    .line 605
    :cond_48
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->M:Lcom/baidu/sapi2/SapiWebView$WeixinHandler;

    if-nez v1, :cond_53

    .line 606
    new-instance v1, Lcom/baidu/sapi2/SapiWebView$DefaultWeixinHandler;

    invoke-direct {v1, p0}, Lcom/baidu/sapi2/SapiWebView$DefaultWeixinHandler;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    iput-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->M:Lcom/baidu/sapi2/SapiWebView$WeixinHandler;

    .line 609
    :cond_53
    new-instance v1, Lcom/baidu/sapi2/SapiWebView$SmsHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/baidu/sapi2/SapiWebView$SmsHandler;-><init>(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/SapiWebView$1;)V

    iput-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->af:Lcom/baidu/sapi2/SapiWebView$SmsHandler;

    .line 610
    new-instance v1, Lcom/baidu/sapi2/SapiWebView$4;

    invoke-direct {v1, p0}, Lcom/baidu/sapi2/SapiWebView$4;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    iput-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->ag:Ljava/lang/Runnable;

    .line 618
    :try_start_62
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->resumeTimers()V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_65} :catch_69

    .line 622
    :goto_65
    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView;->c()V

    .line 623
    return-void

    .line 619
    :catch_69
    move-exception v0

    .line 620
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_65
.end method

.method static synthetic b(Lcom/baidu/sapi2/SapiWebView;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V
    .registers 6
    .param p1, "response"    # Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    .prologue
    .line 2886
    if-nez p1, :cond_3

    .line 2915
    :cond_2
    :goto_2
    return-void

    .line 2890
    :cond_3
    new-instance v0, Lcom/baidu/sapi2/SapiAccount;

    invoke-direct {v0}, Lcom/baidu/sapi2/SapiAccount;-><init>()V

    .line 2891
    .local v0, "sapiAccount":Lcom/baidu/sapi2/SapiAccount;
    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->uid:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    .line 2892
    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    .line 2893
    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->displayname:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    .line 2894
    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->stoken:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    .line 2895
    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->ptoken:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    .line 2896
    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->email:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->email:Ljava/lang/String;

    .line 2897
    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->username:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    .line 2898
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    .line 2899
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->uid:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->reloginCredentials:Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    invoke-virtual {v1, v2, v3}, Lcom/baidu/sapi2/b;->a(Ljava/lang/String;Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;)V

    .line 2901
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->D:Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    if-eqz v1, :cond_2

    .line 2902
    new-instance v1, Lcom/baidu/sapi2/SapiWebView$29;

    invoke-direct {v1, p0, v0, p1}, Lcom/baidu/sapi2/SapiWebView$29;-><init>(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/SapiAccount;Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V

    invoke-virtual {p0, v1}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method static synthetic c(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/callback/SapiCallback;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->am:Lcom/baidu/sapi2/callback/SapiCallback;

    return-object v0
.end method

.method static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 3320
    :try_start_0
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v2

    iget-object v1, v2, Lcom/baidu/sapi2/SapiConfiguration;->skin:Ljava/lang/String;

    .line 3321
    .local v1, "skin":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 3322
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3e

    const-string v2, "file:///android_asset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 3323
    const-string v2, "<link href=\"\" type=text/css rel=stylesheet id=product-skin>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<link type=\"text/css\" rel=\"stylesheet\" href=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 3331
    .end local v1    # "skin":Ljava/lang/String;
    .end local p0    # "data":Ljava/lang/String;
    :cond_3d
    :goto_3d
    return-object p0

    .line 3325
    .restart local v1    # "skin":Ljava/lang/String;
    .restart local p0    # "data":Ljava/lang/String;
    :cond_3e
    const-string v2, "<link href=\"\" type=text/css rel=stylesheet id=product-skin>"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_45} :catch_47

    move-result-object p0

    goto :goto_3d

    .line 3328
    .end local v1    # "skin":Ljava/lang/String;
    :catch_47
    move-exception v0

    .line 3329
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_3d
.end method

.method private c()V
    .registers 4

    .prologue
    .line 626
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Ljava/util/Map;

    const-string v1, "config_fastlogin_features"

    new-instance v2, Lcom/baidu/sapi2/SapiWebView$ConfigFastloginFeaturesInterpreter;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiWebView$ConfigFastloginFeaturesInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Ljava/util/Map;

    const-string v1, "action_feifan_login"

    new-instance v2, Lcom/baidu/sapi2/SapiWebView$FeifanWebviewInterpreter;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiWebView$FeifanWebviewInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Ljava/util/Map;

    const-string v1, "action_social_renren_webview"

    new-instance v2, Lcom/baidu/sapi2/SapiWebView$RenRenWebviewInterpreter;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiWebView$RenRenWebviewInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Ljava/util/Map;

    const-string v1, "action_social_sina_sso"

    new-instance v2, Lcom/baidu/sapi2/SapiWebView$SinaSSOInterpreter;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiWebView$SinaSSOInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Ljava/util/Map;

    const-string v1, "action_social_weixin_sso"

    new-instance v2, Lcom/baidu/sapi2/SapiWebView$WeiXinSSOInterpreter;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiWebView$WeiXinSSOInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Ljava/util/Map;

    const-string v1, "action_social_qzone_webview"

    new-instance v2, Lcom/baidu/sapi2/SapiWebView$QzoneWebviewInterpreter;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiWebView$QzoneWebviewInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Ljava/util/Map;

    const-string v1, "action_social_tx_weibo_webview"

    new-instance v2, Lcom/baidu/sapi2/SapiWebView$TXWeiboWebviewInterpreter;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiWebView$TXWeiboWebviewInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Ljava/util/Map;

    const-string v1, "action_social_sina_weibo_webview"

    new-instance v2, Lcom/baidu/sapi2/SapiWebView$SinaWeiboWebviewInterpreter;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiWebView$SinaWeiboWebviewInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Ljava/util/Map;

    const-string v1, "action_huawei_login"

    new-instance v2, Lcom/baidu/sapi2/SapiWebView$HuaweiSSOintrpreter;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiWebView$HuaweiSSOintrpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Ljava/util/Map;

    const-string v1, "action_nuomi_login"

    new-instance v2, Lcom/baidu/sapi2/SapiWebView$NuomiLoginInterpreter;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiWebView$NuomiLoginInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Ljava/util/Map;

    const-string v1, "action_lecai_login"

    new-instance v2, Lcom/baidu/sapi2/SapiWebView$LecaiLoginInterpreter;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiWebView$LecaiLoginInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Ljava/util/Map;

    const-string v1, "action_voice_login"

    new-instance v2, Lcom/baidu/sapi2/SapiWebView$VoiceLoginInterpreter;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiWebView$VoiceLoginInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Ljava/util/Map;

    const-string v1, "action_unite_verify"

    new-instance v2, Lcom/baidu/sapi2/SapiWebView$UniteVerifyInterpreter;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiWebView$UniteVerifyInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Ljava/util/Map;

    const-string v1, "loginWithQRCode"

    new-instance v2, Lcom/baidu/sapi2/SapiWebView$QRcodeLoginInterpreter;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiWebView$QRcodeLoginInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Ljava/util/Map;

    const-string v1, "loginWithDeviceId"

    new-instance v2, Lcom/baidu/sapi2/SapiWebView$DeviceIdLoginInterpreter;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiWebView$DeviceIdLoginInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Ljava/util/Map;

    const-string v1, "authorized_response"

    new-instance v2, Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Ljava/util/Map;

    const-string v1, "config_login_share_strategy"

    new-instance v2, Lcom/baidu/sapi2/SapiWebView$ShareStrategyConfigInterpreter;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiWebView$ShareStrategyConfigInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Ljava/util/Map;

    const-string v1, "config_canshare_accounts"

    new-instance v2, Lcom/baidu/sapi2/SapiWebView$ShareAccountsConfigInterpreter;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiWebView$ShareAccountsConfigInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Ljava/util/Map;

    const-string v1, "action_remove_share_account"

    new-instance v2, Lcom/baidu/sapi2/SapiWebView$ShareAccountsRemoveInterpreter;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiWebView$ShareAccountsRemoveInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Ljava/util/Map;

    const-string v1, "unite_verify_result"

    new-instance v2, Lcom/baidu/sapi2/SapiWebView$UniteVerifyResultInterpreter;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiWebView$UniteVerifyResultInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Ljava/util/Map;

    const-string v1, "action_share_accounts_view_btn_clicked"

    new-instance v2, Lcom/baidu/sapi2/SapiWebView$5;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiWebView$5;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Ljava/util/Map;

    const-string v1, "action_bind_widget_phone_number_exist"

    new-instance v2, Lcom/baidu/sapi2/SapiWebView$6;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiWebView$6;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Ljava/util/Map;

    const-string v1, "finish"

    new-instance v2, Lcom/baidu/sapi2/SapiWebView$7;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiWebView$7;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Ljava/util/Map;

    const-string v1, "back"

    new-instance v2, Lcom/baidu/sapi2/SapiWebView$8;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiWebView$8;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Ljava/util/Map;

    const-string v1, "action_fast_reg"

    new-instance v2, Lcom/baidu/sapi2/SapiWebView$9;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiWebView$9;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Ljava/util/Map;

    const-string v1, "action_forget_pwd"

    new-instance v2, Lcom/baidu/sapi2/SapiWebView$10;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiWebView$10;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Ljava/util/Map;

    const-string v1, "action_received_sms_code"

    new-instance v2, Lcom/baidu/sapi2/SapiWebView$11;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiWebView$11;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Ljava/util/Map;

    const-string v1, "set_pass_canceled"

    new-instance v2, Lcom/baidu/sapi2/SapiWebView$12;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiWebView$12;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Ljava/util/Map;

    const-string v1, "get_preset_phone_number"

    new-instance v2, Lcom/baidu/sapi2/SapiWebView$13;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiWebView$13;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    return-void
.end method

.method static synthetic c(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;
    .param p1, "x1"    # Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiWebView;->a(Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V

    return-void
.end method

.method static synthetic d(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiConfiguration;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->B:Lcom/baidu/sapi2/SapiConfiguration;

    return-object v0
.end method

.method private d()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 771
    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_9} :catch_23

    .line 776
    :goto_9
    invoke-virtual {p0, v3}, Lcom/baidu/sapi2/SapiWebView;->setScrollBarStyle(I)V

    .line 777
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 778
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 779
    new-instance v1, Lcom/baidu/sapi2/SapiWebView$14;

    invoke-direct {v1, p0}, Lcom/baidu/sapi2/SapiWebView$14;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-virtual {p0, v1}, Lcom/baidu/sapi2/SapiWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 792
    return-void

    .line 772
    :catch_23
    move-exception v0

    .line 774
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method private d(Ljava/lang/String;)V
    .registers 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 2692
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 2693
    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView;->g()V

    .line 2702
    :goto_15
    return-void

    .line 2695
    :cond_16
    new-instance v0, Lcom/baidu/sapi2/SapiWebView$28;

    invoke-direct {v0, p0, p1}, Lcom/baidu/sapi2/SapiWebView$28;-><init>(Lcom/baidu/sapi2/SapiWebView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_15
.end method

.method static synthetic e(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$TimeoutTask;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->ad:Lcom/baidu/sapi2/SapiWebView$TimeoutTask;

    return-object v0
.end method

.method private e()V
    .registers 4

    .prologue
    .line 1052
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView;->B:Lcom/baidu/sapi2/SapiConfiguration;

    iget-boolean v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->customActionBarEnabled:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/sapi2/SapiWebView;->a(ILjava/util/List;Z)V

    .line 1053
    return-void
.end method

.method static synthetic f(Lcom/baidu/sapi2/SapiWebView;)J
    .registers 3
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/baidu/sapi2/SapiWebView;->ab:J

    return-wide v0
.end method

.method private f()V
    .registers 2

    .prologue
    .line 2189
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->stopLoading()V

    .line 2190
    new-instance v0, Lcom/baidu/sapi2/SapiWebView$18;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/SapiWebView$18;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    .line 2201
    return-void
.end method

.method static synthetic g(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$AuthWidgetCallback;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->Q:Lcom/baidu/sapi2/SapiWebView$AuthWidgetCallback;

    return-object v0
.end method

.method private g()V
    .registers 2

    .prologue
    .line 2205
    new-instance v0, Lcom/baidu/sapi2/SapiWebView$19;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/SapiWebView$19;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    .line 2216
    return-void
.end method

.method static synthetic h(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$ChangePwdCallback;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->P:Lcom/baidu/sapi2/SapiWebView$ChangePwdCallback;

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3237
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 3238
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .line 3239
    .local v0, "phoneNum":Ljava/lang/String;
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/sapi2/utils/SapiUtils;->checkRequestPermission(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 3240
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 3242
    :cond_1d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 3243
    const/4 v2, 0x0

    .line 3245
    :goto_24
    return-object v2

    :cond_25
    const-string v2, "+86"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_24
.end method

.method static synthetic i(Lcom/baidu/sapi2/SapiWebView;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->aa:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private i()V
    .registers 3

    .prologue
    .line 3260
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->ae:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_d

    .line 3262
    :try_start_4
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->ae:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_11

    .line 3266
    :cond_d
    :goto_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->ae:Landroid/content/BroadcastReceiver;

    .line 3267
    return-void

    .line 3263
    :catch_11
    move-exception v0

    goto :goto_d
.end method

.method static synthetic j(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/shell/response/SocialResponse;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->an:Lcom/baidu/sapi2/shell/response/SocialResponse;

    return-object v0
.end method

.method private j()V
    .registers 2

    .prologue
    .line 3360
    new-instance v0, Lcom/baidu/sapi2/SapiWebView$32;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/SapiWebView$32;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    .line 3372
    return-void
.end method

.method static synthetic k(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/shell/listener/AuthorizationListener;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->D:Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    return-object v0
.end method

.method static synthetic l(Lcom/baidu/sapi2/SapiWebView;)Landroid/widget/ProgressBar;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->W:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic m(Lcom/baidu/sapi2/SapiWebView;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->A:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic n(Lcom/baidu/sapi2/SapiWebView;)V
    .registers 1
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView;->i()V

    return-void
.end method

.method static synthetic o(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$QuickLoginHandler;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->O:Lcom/baidu/sapi2/SapiWebView$QuickLoginHandler;

    return-object v0
.end method

.method static synthetic p(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$BindWidgetCallback;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->R:Lcom/baidu/sapi2/SapiWebView$BindWidgetCallback;

    return-object v0
.end method

.method static synthetic q(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$FastRegHandler;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->H:Lcom/baidu/sapi2/SapiWebView$FastRegHandler;

    return-object v0
.end method

.method static synthetic r(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$SmsHandler;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->af:Lcom/baidu/sapi2/SapiWebView$SmsHandler;

    return-object v0
.end method

.method static synthetic s(Lcom/baidu/sapi2/SapiWebView;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->ag:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic t(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->al:Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    return-object v0
.end method

.method static synthetic u(Lcom/baidu/sapi2/SapiWebView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic v(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$OnFinishCallback;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->ah:Lcom/baidu/sapi2/SapiWebView$OnFinishCallback;

    return-object v0
.end method

.method static synthetic w(Lcom/baidu/sapi2/SapiWebView;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->E:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic x(Lcom/baidu/sapi2/SapiWebView;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->F:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic y(Lcom/baidu/sapi2/SapiWebView;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->G:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic z(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$NMLoginHandler;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->J:Lcom/baidu/sapi2/SapiWebView$NMLoginHandler;

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3336
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->B:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(:[0-9]{1,4})?"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3338
    .local v0, "domain":Ljava/lang/String;
    const-string v1, "BIND_BDUSS"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/baidu/sapi2/utils/SapiUtils;->buildBDUSSCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method a(Z)V
    .registers 6
    .param p1, "closeOnCancel"    # Z

    .prologue
    .line 2280
    new-instance v1, Lcom/baidu/sapi2/plugin/sso/SsoHandler;

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v2, "2512457640"

    const-string v3, "http://www.baidu.com"

    invoke-direct {v1, v0, v2, v3}, Lcom/baidu/sapi2/plugin/sso/SsoHandler;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->T:Lcom/baidu/sapi2/plugin/sso/SsoHandler;

    .line 2281
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->T:Lcom/baidu/sapi2/plugin/sso/SsoHandler;

    new-instance v1, Lcom/baidu/sapi2/SapiWebView$20;

    invoke-direct {v1, p0, p1}, Lcom/baidu/sapi2/SapiWebView$20;-><init>(Lcom/baidu/sapi2/SapiWebView;Z)V

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/plugin/sso/SsoHandler;->authorize(Lcom/baidu/sapi2/plugin/SSOListener;)V

    .line 2314
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/b;->c()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2315
    new-instance v0, Lcom/baidu/sapi2/SapiWebView$21;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/SapiWebView$21;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    .line 2322
    :cond_31
    return-void
.end method

.method public back()V
    .registers 3

    .prologue
    .line 1552
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->al:Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    invoke-direct {p0, v1}, Lcom/baidu/sapi2/SapiWebView;->b(Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V

    .line 1553
    const-string v0, "javascript:(function(){if(window.Pass&&Pass.switchView){Pass.switchView(\'back\')}}())"

    .line 1554
    .local v0, "fnSwitchView":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->a(Lcom/baidu/sapi2/SapiWebView;Ljava/lang/String;)V

    .line 1556
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->an:Lcom/baidu/sapi2/shell/response/SocialResponse;

    invoke-direct {p0, v1}, Lcom/baidu/sapi2/SapiWebView;->a(Lcom/baidu/sapi2/shell/response/SocialResponse;)V

    .line 1558
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->U:Landroid/view/View;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->U:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_27

    :cond_1b
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->V:Landroid/view/View;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->V:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2a

    .line 1560
    :cond_27
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->finish()V

    .line 1562
    :cond_2a
    return-void
.end method

.method public finish()V
    .registers 3

    .prologue
    .line 1565
    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView;->i()V

    .line 1566
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->ak:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    if-eqz v0, :cond_1c

    .line 1567
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->ak:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a(Lcom/baidu/sapi2/SapiWebView$FastRegAction;Z)Z

    .line 1568
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->ak:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->c(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->ak:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->b(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1570
    :cond_1c
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->ah:Lcom/baidu/sapi2/SapiWebView$OnFinishCallback;

    if-eqz v0, :cond_28

    .line 1571
    new-instance v0, Lcom/baidu/sapi2/SapiWebView$17;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/SapiWebView$17;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    .line 1578
    :cond_28
    return-void
.end method

.method public getTimeoutMillis()J
    .registers 3

    .prologue
    .line 1505
    iget-wide v0, p0, Lcom/baidu/sapi2/SapiWebView;->ab:J

    return-wide v0
.end method

.method public loadAuthWidget(Ljava/lang/String;)V
    .registers 3
    .param p1, "authToken"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1342
    invoke-virtual {p0, v0, p1, v0}, Lcom/baidu/sapi2/SapiWebView;->loadAuthWidget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    return-void
.end method

.method public loadAuthWidget(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "bduss"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1356
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/sapi2/SapiWebView;->loadAuthWidget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    return-void
.end method

.method public loadAuthWidget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "bduss"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;
    .param p3, "skinUrl"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1370
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1371
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "authToken can\'t be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1373
    :cond_e
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/baidu/sapi2/utils/SapiUtils;->webLogin(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1374
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1376
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :try_start_1a
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "token"

    const-string v5, "UTF-8"

    invoke-static {p2, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1377
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "u"

    const-string v5, "http://www.baidu.com?__wp-action=auth-widget"

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1378
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 1379
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "skin"

    invoke-direct {v3, v4, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1a .. :try_end_4c} :catch_7d

    .line 1384
    :cond_4c
    :goto_4c
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiAccountService;->e()Ljava/lang/String;

    move-result-object v0

    .line 1385
    .local v0, "authWidgetUrl":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_79

    .line 1386
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/baidu/sapi2/utils/SapiUtils;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1388
    :cond_79
    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    .line 1389
    return-void

    .line 1381
    .end local v0    # "authWidgetUrl":Ljava/lang/String;
    :catch_7d
    move-exception v1

    .line 1382
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_4c
.end method

.method public loadBindWidget(Lcom/baidu/sapi2/utils/enums/BindWidgetAction;Ljava/lang/String;)V
    .registers 9
    .param p1, "action"    # Lcom/baidu/sapi2/utils/enums/BindWidgetAction;
    .param p2, "bduss"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1267
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/sapi2/SapiWebView;->loadBindWidget(Lcom/baidu/sapi2/utils/enums/BindWidgetAction;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    .line 1268
    return-void
.end method

.method public loadBindWidget(Lcom/baidu/sapi2/utils/enums/BindWidgetAction;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    .registers 13
    .param p1, "action"    # Lcom/baidu/sapi2/utils/enums/BindWidgetAction;
    .param p2, "bduss"    # Ljava/lang/String;
    .param p3, "skinUrl"    # Ljava/lang/String;
    .param p4, "skipSuccessTip"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/utils/enums/BindWidgetAction;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1309
    .local p5, "extras":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-nez p1, :cond_a

    .line 1310
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "BindWidgetAction can\'t be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1312
    :cond_a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1313
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "bduss can\'t be empty"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1315
    :cond_18
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/baidu/sapi2/utils/SapiUtils;->webLogin(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1316
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1317
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_34

    .line 1318
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "skin"

    invoke-direct {v4, v5, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1320
    :cond_34
    if-eqz p4, :cond_42

    .line 1321
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "skip"

    const-string v6, "1"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1323
    :cond_42
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/baidu/sapi2/SapiAccountService;->a(Lcom/baidu/sapi2/utils/enums/BindWidgetAction;)Ljava/lang/String;

    move-result-object v1

    .line 1324
    .local v1, "bindWidgetUrl":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6f

    .line 1325
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/baidu/sapi2/utils/SapiUtils;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1327
    :cond_6f
    invoke-direct {p0, v1, p5}, Lcom/baidu/sapi2/SapiWebView;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 1328
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->a()Ljava/lang/String;

    move-result-object v0

    .line 1329
    .local v0, "bindBdussCookie":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1330
    .local v2, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v5, p0, Lcom/baidu/sapi2/SapiWebView;->B:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v5, v5, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v5}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1331
    invoke-virtual {p0, v1, v2}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;Ljava/util/List;)V

    .line 1332
    return-void
.end method

.method public loadBindWidget(Lcom/baidu/sapi2/utils/enums/BindWidgetAction;Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .param p1, "action"    # Lcom/baidu/sapi2/utils/enums/BindWidgetAction;
    .param p2, "bduss"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/utils/enums/BindWidgetAction;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1280
    .local p3, "extras":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/sapi2/SapiWebView;->loadBindWidget(Lcom/baidu/sapi2/utils/enums/BindWidgetAction;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    .line 1281
    return-void
.end method

.method public loadBindWidget(Lcom/baidu/sapi2/utils/enums/BindWidgetAction;Ljava/lang/String;Z)V
    .registers 10
    .param p1, "action"    # Lcom/baidu/sapi2/utils/enums/BindWidgetAction;
    .param p2, "bduss"    # Ljava/lang/String;
    .param p3, "skipSuccessTip"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1293
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/sapi2/SapiWebView;->loadBindWidget(Lcom/baidu/sapi2/utils/enums/BindWidgetAction;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    .line 1294
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "failUrl"    # Ljava/lang/String;

    .prologue
    .line 1538
    new-instance v0, Lcom/baidu/sapi2/SapiWebView$16;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/baidu/sapi2/SapiWebView$16;-><init>(Lcom/baidu/sapi2/SapiWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    .line 1547
    return-void
.end method

.method public loadFastReg()V
    .registers 3

    .prologue
    .line 1477
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->isSimReady(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 1479
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&regLink=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#sms_login"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    .line 1486
    :goto_3c
    return-void

    .line 1482
    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#fastReg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    .line 1483
    new-instance v0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->ak:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    .line 1484
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->ak:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)V

    goto :goto_3c
.end method

.method public loadFillUProfile(Ljava/lang/String;)V
    .registers 3
    .param p1, "bduss"    # Ljava/lang/String;

    .prologue
    .line 1400
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/sapi2/SapiWebView;->loadFillUProfile(Ljava/lang/String;Z)V

    .line 1401
    return-void
.end method

.method public loadFillUProfile(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "bduss"    # Ljava/lang/String;
    .param p2, "simplified"    # Z

    .prologue
    .line 1412
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/sapi2/SapiWebView;->loadFillUProfile(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1413
    return-void
.end method

.method public loadFillUProfile(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 9
    .param p1, "bduss"    # Ljava/lang/String;
    .param p2, "simplified"    # Z
    .param p3, "skinUrl"    # Ljava/lang/String;

    .prologue
    .line 1426
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1427
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "bduss can\'t be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1429
    :cond_e
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/baidu/sapi2/utils/SapiUtils;->webLogin(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1430
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1431
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 1432
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "skin"

    invoke-direct {v2, v3, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1434
    :cond_2a
    if-eqz p2, :cond_38

    .line 1435
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "simplify"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1437
    :cond_38
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiAccountService;->g()Ljava/lang/String;

    move-result-object v0

    .line 1438
    .local v0, "fillStartUrl":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_65

    .line 1439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1441
    :cond_65
    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    .line 1442
    return-void
.end method

.method public loadForgetPwd()V
    .registers 2

    .prologue
    .line 1194
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->loadForgetPwd(Ljava/lang/String;)V

    .line 1195
    return-void
.end method

.method public loadForgetPwd(Ljava/lang/String;)V
    .registers 9
    .param p1, "skinUrl"    # Ljava/lang/String;

    .prologue
    .line 1202
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1204
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :try_start_5
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "u"

    const-string v5, "http://www.baidu.com?__wp-action=forget-pwd"

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1205
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 1206
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "skin"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_27} :catch_58

    .line 1211
    :cond_27
    :goto_27
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiAccountService;->b()Ljava/lang/String;

    move-result-object v1

    .line 1212
    .local v1, "forgetPwdUrl":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_54

    .line 1213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/baidu/sapi2/utils/SapiUtils;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1215
    :cond_54
    invoke-virtual {p0, v1}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    .line 1216
    return-void

    .line 1208
    .end local v1    # "forgetPwdUrl":Ljava/lang/String;
    :catch_58
    move-exception v0

    .line 1209
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_27
.end method

.method public loadHuaWeiSSOLogin()V
    .registers 5

    .prologue
    .line 2582
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_47

    .line 2583
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2584
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "useSMSLogin"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2585
    new-instance v1, Lcom/baidu/sapi2/SapiWebView$25;

    invoke-direct {v1, p0}, Lcom/baidu/sapi2/SapiWebView$25;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    .line 2612
    .local v1, "hwIDCallBack":Lcom/huawei/hwid/openapi/out/IHwIDCallBack;
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView;->B:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->hwAppId:Ljava/lang/String;

    invoke-static {v2, v3, v1, v0}, Lcom/huawei/hwid/openapi/OpenHwID;->setLoginProxy(Landroid/app/Activity;Ljava/lang/String;Lcom/huawei/hwid/openapi/out/IHwIDCallBack;Landroid/os/Bundle;)V

    .line 2613
    invoke-static {}, Lcom/huawei/hwid/openapi/OpenHwID;->logout()V

    .line 2614
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v2}, Lcom/huawei/hwid/openapi/OpenHwID;->login(Landroid/os/Bundle;)V

    .line 2616
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/b;->c()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 2617
    new-instance v2, Lcom/baidu/sapi2/SapiWebView$26;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiWebView$26;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-virtual {p0, v2}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    .line 2627
    :cond_46
    return-void

    .line 2625
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "hwIDCallBack":Lcom/huawei/hwid/openapi/out/IHwIDCallBack;
    :cond_47
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "context not Activity"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public loadIqiyiBindServer(Ljava/lang/String;)V
    .registers 10
    .param p1, "nextUrl"    # Ljava/lang/String;

    .prologue
    .line 2261
    if-nez p1, :cond_3

    .line 2274
    :goto_2
    return-void

    .line 2264
    :cond_3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2265
    .local v4, "mkey":Landroid/net/Uri;
    const-string v5, "mkey"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2266
    .local v3, "mKeyValue":Ljava/lang/String;
    iget-object v5, p0, Lcom/baidu/sapi2/SapiWebView;->B:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v5, v5, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v5}, Lcom/baidu/sapi2/utils/enums/Domain;->getURL()Ljava/lang/String;

    move-result-object v5

    const-string v6, "http://"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "https://"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "(:[0-9]{1,4})?"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2268
    .local v2, "domain":Ljava/lang/String;
    const-string v5, "mkey"

    invoke-static {v2, v5, v3}, Lcom/baidu/sapi2/utils/SapiUtils;->buildIqiyiCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2269
    .local v0, "bindCookie":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2270
    .local v1, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v6, p0, Lcom/baidu/sapi2/SapiWebView;->B:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v6, v6, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v6}, Lcom/baidu/sapi2/utils/enums/Domain;->getURL()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2272
    invoke-virtual {p0, p1, v1}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2
.end method

.method public loadLogin()V
    .registers 3

    .prologue
    .line 929
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/sapi2/SapiWebView;->loadLogin(ILjava/util/List;)V

    .line 930
    return-void
.end method

.method public loadLogin(I)V
    .registers 3
    .param p1, "loginType"    # I

    .prologue
    .line 946
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/sapi2/SapiWebView;->loadLogin(ILjava/util/List;)V

    .line 947
    return-void
.end method

.method public loadLogin(ILjava/util/List;)V
    .registers 6
    .param p1, "loginType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 974
    .local p2, "extras":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountManager;->getShareAccounts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_16

    .line 975
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->B:Lcom/baidu/sapi2/SapiConfiguration;

    iget-boolean v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->customActionBarEnabled:Z

    invoke-direct {p0, p1, p2, v1}, Lcom/baidu/sapi2/SapiWebView;->a(ILjava/util/List;Z)V

    .line 1002
    :goto_15
    return-void

    .line 977
    :cond_16
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/baidu/sapi2/SapiWebView;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 978
    .local v0, "url":Ljava/lang/String;
    packed-switch p1, :pswitch_data_80

    .line 998
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#login"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_15

    .line 980
    :pswitch_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#login"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_15

    .line 983
    :pswitch_57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#sms_login"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_15

    .line 986
    :pswitch_6e
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->H:Lcom/baidu/sapi2/SapiWebView$FastRegHandler;

    if-eqz v1, :cond_7b

    .line 987
    new-instance v1, Lcom/baidu/sapi2/SapiWebView$15;

    invoke-direct {v1, p0}, Lcom/baidu/sapi2/SapiWebView$15;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-virtual {p0, v1}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_15

    .line 994
    :cond_7b
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->loadFastReg()V

    goto :goto_15

    .line 978
    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_40
        :pswitch_57
        :pswitch_6e
    .end packed-switch
.end method

.method public loadLogin(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 955
    .local p1, "extras":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/baidu/sapi2/SapiWebView;->loadLogin(ILjava/util/List;)V

    .line 956
    return-void
.end method

.method public loadLoginProxy(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;)V
    .registers 6
    .param p2, "actionUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/callback/SapiCallback",
            "<",
            "Lcom/baidu/sapi2/result/LoginResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1085
    .local p1, "callback":Lcom/baidu/sapi2/callback/SapiCallback;, "Lcom/baidu/sapi2/callback/SapiCallback<Lcom/baidu/sapi2/result/LoginResult;>;"
    if-nez p1, :cond_21

    .line 1086
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1088
    :cond_21
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1089
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "actionUrl can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1091
    :cond_2f
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->am:Lcom/baidu/sapi2/callback/SapiCallback;

    .line 1092
    invoke-virtual {p0, p2}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    .line 1093
    return-void
.end method

.method public loadLoginWithUserName(Ljava/lang/String;)V
    .registers 6
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 1011
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1012
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->loadLogin()V

    .line 1026
    :goto_9
    return-void

    .line 1014
    :cond_a
    const-string v1, ""

    .line 1016
    .local v1, "paramUserName":Ljava/lang/String;
    :try_start_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disusername="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_24
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_24} :catch_58

    move-result-object v1

    .line 1020
    :goto_25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 1021
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiAccountService;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#authPwd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_9

    .line 1017
    :catch_58
    move-exception v0

    .line 1018
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_25

    .line 1023
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_5d
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->loadLogin()V

    goto :goto_9
.end method

.method public loadModifyPwd(Ljava/lang/String;)V
    .registers 3
    .param p1, "bduss"    # Ljava/lang/String;

    .prologue
    .line 1157
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/sapi2/SapiWebView;->loadModifyPwd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    return-void
.end method

.method public loadModifyPwd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "bduss"    # Ljava/lang/String;
    .param p2, "skinUrl"    # Ljava/lang/String;

    .prologue
    .line 1167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1168
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "bduss can\'t be empty"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1170
    :cond_e
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/baidu/sapi2/utils/SapiUtils;->webLogin(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1171
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1173
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :try_start_1a
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "u"

    const-string v7, "http://www.baidu.com?__wp-action=modify-pwd"

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1174
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 1175
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "skin"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1a .. :try_end_3c} :catch_86

    .line 1180
    :cond_3c
    :goto_3c
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/sapi2/SapiAccountService;->c()Ljava/lang/String;

    move-result-object v4

    .line 1181
    .local v4, "modifyPwdUrl":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_69

    .line 1182
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/baidu/sapi2/utils/SapiUtils;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1184
    :cond_69
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->a()Ljava/lang/String;

    move-result-object v0

    .line 1185
    .local v0, "bindBdussCookie":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1186
    .local v1, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v6, p0, Lcom/baidu/sapi2/SapiWebView;->B:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v6, v6, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v6}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1187
    invoke-virtual {p0, v4, v1}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;Ljava/util/List;)V

    .line 1188
    return-void

    .line 1177
    .end local v0    # "bindBdussCookie":Ljava/lang/String;
    .end local v1    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v4    # "modifyPwdUrl":Ljava/lang/String;
    :catch_86
    move-exception v2

    .line 1178
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v2}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_3c
.end method

.method public loadOperationRecord(Ljava/lang/String;)V
    .registers 3
    .param p1, "bduss"    # Ljava/lang/String;

    .prologue
    .line 1232
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/sapi2/SapiWebView;->loadOperationRecord(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    return-void
.end method

.method public loadOperationRecord(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "bduss"    # Ljava/lang/String;
    .param p2, "skinUrl"    # Ljava/lang/String;

    .prologue
    .line 1243
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1244
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "bduss can\'t be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1246
    :cond_e
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/baidu/sapi2/utils/SapiUtils;->webLogin(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1248
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 1249
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "skin"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1251
    :cond_2a
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiAccountService;->d()Ljava/lang/String;

    move-result-object v1

    .line 1252
    .local v1, "operationRecordUrl":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_57

    .line 1253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1255
    :cond_57
    invoke-virtual {p0, v1}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    .line 1256
    return-void
.end method

.method public loadQQSSOLogin()V
    .registers 6

    .prologue
    .line 2393
    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView;->B:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->qqAppID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    .line 2395
    .local v0, "mTencent":Lcom/tencent/tauth/Tencent;
    new-instance v2, Lcom/baidu/sapi2/SapiWebView$23;

    invoke-direct {v2, p0, v0}, Lcom/baidu/sapi2/SapiWebView$23;-><init>(Lcom/baidu/sapi2/SapiWebView;Lcom/tencent/tauth/Tencent;)V

    iput-object v2, p0, Lcom/baidu/sapi2/SapiWebView;->C:Lcom/tencent/tauth/IUiListener;

    .line 2435
    invoke-virtual {v0}, Lcom/tencent/tauth/Tencent;->isSessionValid()Z

    move-result v2

    if-nez v2, :cond_66

    .line 2436
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/tencent/tauth/Tencent;->isSupportSSOLogin(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 2437
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const-string v3, "all"

    iget-object v4, p0, Lcom/baidu/sapi2/SapiWebView;->C:Lcom/tencent/tauth/IUiListener;

    invoke-virtual {v0, v2, v3, v4}, Lcom/tencent/tauth/Tencent;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    .line 2448
    :cond_32
    :goto_32
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/b;->c()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 2449
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u60a8\u7684\u624b\u673a\u88ab\u6076\u610f\u8f6f\u4ef6\u7be1\u6539\uff0c\u53ef\u80fd\u65e0\u6cd5\u4f7f\u7528\u7b2c\u4e09\u65b9\u5e10\u53f7\u767b\u5f55\u767e\u5ea6\uff0c\u8bf7\u66f4\u6362\u5176\u4ed6\u767b\u5f55\u65b9\u5f0f"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2451
    :cond_4e
    return-void

    .line 2439
    :cond_4f
    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView;->E:Landroid/os/Handler;

    if-eqz v2, :cond_32

    .line 2440
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2441
    .local v1, "msg":Landroid/os/Message;
    sget-object v2, Lcom/baidu/sapi2/utils/enums/SocialType;->QQ:Lcom/baidu/sapi2/utils/enums/SocialType;

    invoke-virtual {v2}, Lcom/baidu/sapi2/utils/enums/SocialType;->getType()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2442
    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView;->E:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_32

    .line 2446
    .end local v1    # "msg":Landroid/os/Message;
    :cond_66
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const-string v3, "all"

    iget-object v4, p0, Lcom/baidu/sapi2/SapiWebView;->C:Lcom/tencent/tauth/IUiListener;

    invoke-virtual {v0, v2, v3, v4}, Lcom/tencent/tauth/Tencent;->reAuth(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    goto :goto_32
.end method

.method public loadQuickLogin(Lcom/baidu/sapi2/SapiWebView$QuickLoginHandler;)V
    .registers 5
    .param p1, "quickLoginHandler"    # Lcom/baidu/sapi2/SapiWebView$QuickLoginHandler;

    .prologue
    .line 1044
    if-nez p1, :cond_21

    .line 1045
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/baidu/sapi2/SapiWebView$QuickLoginHandler;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1047
    :cond_21
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->O:Lcom/baidu/sapi2/SapiWebView$QuickLoginHandler;

    .line 1048
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/sapi2/SapiWebView;->a(ILjava/util/List;Z)V

    .line 1049
    return-void
.end method

.method public loadQuickUserReg()V
    .registers 4

    .prologue
    .line 1140
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->B:Lcom/baidu/sapi2/SapiConfiguration;

    iget-boolean v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->quickUserEnabled:Z

    if-nez v1, :cond_a

    .line 1141
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->loadRegist()V

    .line 1149
    :goto_9
    return-void

    .line 1143
    :cond_a
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountService;->a()Ljava/lang/String;

    move-result-object v0

    .line 1144
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->B:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->registMode:Lcom/baidu/sapi2/utils/enums/RegistMode;

    sget-object v2, Lcom/baidu/sapi2/utils/enums/RegistMode;->QUICK_USER:Lcom/baidu/sapi2/utils/enums/RegistMode;

    if-eq v1, v2, :cond_31

    .line 1145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&regtype=2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1147
    :cond_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#reg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public loadRegist()V
    .registers 2

    .prologue
    .line 1099
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->loadRegist(Ljava/util/List;)V

    .line 1100
    return-void
.end method

.method public loadRegist(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1109
    .local p1, "extras":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountService;->a()Ljava/lang/String;

    move-result-object v0

    .line 1110
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->B:Lcom/baidu/sapi2/SapiConfiguration;

    iget-boolean v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->quickUserEnabled:Z

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->B:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->registMode:Lcom/baidu/sapi2/utils/enums/RegistMode;

    sget-object v2, Lcom/baidu/sapi2/utils/enums/RegistMode;->QUICK_USER:Lcom/baidu/sapi2/utils/enums/RegistMode;

    if-ne v1, v2, :cond_22

    .line 1111
    const-string v1, "regtype=2"

    const-string v2, "regtype=1"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1113
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/baidu/sapi2/SapiWebView;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#reg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    .line 1114
    return-void
.end method

.method public loadSinaSSOLogin()V
    .registers 2

    .prologue
    .line 2254
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->a(Z)V

    .line 2255
    return-void
.end method

.method public loadSmsLogin()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1036
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getShareAccounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 1037
    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView;->e()V

    .line 1041
    :goto_11
    return-void

    .line 1039
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#sms_login"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_11
.end method

.method public loadSocialLogin(Lcom/baidu/sapi2/utils/enums/SocialType;)V
    .registers 3
    .param p1, "socialType"    # Lcom/baidu/sapi2/utils/enums/SocialType;

    .prologue
    .line 2636
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/sapi2/SapiWebView;->loadSocialLogin(Lcom/baidu/sapi2/utils/enums/SocialType;Z)V

    .line 2637
    return-void
.end method

.method public loadSocialLogin(Lcom/baidu/sapi2/utils/enums/SocialType;Z)V
    .registers 8
    .param p1, "socialType"    # Lcom/baidu/sapi2/utils/enums/SocialType;
    .param p2, "forceLogin"    # Z

    .prologue
    .line 2648
    if-nez p1, :cond_a

    .line 2649
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "SocialType can\'t be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2651
    :cond_a
    sget-object v2, Lcom/baidu/sapi2/utils/enums/SocialType;->UNKNOWN:Lcom/baidu/sapi2/utils/enums/SocialType;

    if-ne p1, v2, :cond_16

    .line 2652
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown SocialType"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2654
    :cond_16
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/baidu/sapi2/SapiAccountService;->a(Lcom/baidu/sapi2/utils/enums/SocialType;)Ljava/lang/String;

    move-result-object v1

    .line 2655
    .local v1, "url":Ljava/lang/String;
    if-eqz p2, :cond_37

    .line 2656
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&is_force_login=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2659
    :cond_37
    sget-object v2, Lcom/baidu/sapi2/utils/enums/SocialType;->RENREN:Lcom/baidu/sapi2/utils/enums/SocialType;

    if-ne p1, v2, :cond_5a

    .line 2661
    :try_start_3b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "http://www.baidu.com?__wp-action=renren-offline"

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_59
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3b .. :try_end_59} :catch_74

    move-result-object v1

    .line 2668
    :cond_5a
    :goto_5a
    invoke-virtual {p0, v1}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    .line 2669
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/b;->c()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 2670
    new-instance v2, Lcom/baidu/sapi2/SapiWebView$27;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiWebView$27;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    invoke-virtual {p0, v2}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    .line 2677
    :cond_73
    return-void

    .line 2663
    :catch_74
    move-exception v0

    .line 2664
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_5a
.end method

.method public loadUniteVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "verifyToken"    # Ljava/lang/String;
    .param p2, "returnUrl"    # Ljava/lang/String;
    .param p3, "adText"    # Ljava/lang/String;

    .prologue
    .line 1453
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1454
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid Params: verifyToken can\'t be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1456
    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1458
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :try_start_13
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "token"

    const-string v5, "UTF-8"

    invoke-static {p1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1459
    if-eqz p2, :cond_2f

    .line 1460
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "u"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1462
    :cond_2f
    if-eqz p3, :cond_41

    .line 1463
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "adtext"

    const-string v5, "UTF-8"

    invoke-static {p3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_41} :catch_6c

    .line 1468
    :cond_41
    :goto_41
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiAccountService;->f()Ljava/lang/String;

    move-result-object v2

    .line 1469
    .local v2, "uniteVerifyUrl":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1470
    invoke-virtual {p0, v2}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    .line 1471
    return-void

    .line 1465
    .end local v2    # "uniteVerifyUrl":Ljava/lang/String;
    :catch_6c
    move-exception v0

    .line 1466
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_41
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1521
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;Ljava/util/List;)V

    .line 1522
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1526
    .local p2, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/sapi2/utils/SapiUtils;->syncCookies(Landroid/content/Context;Ljava/util/List;)V

    .line 1528
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/baidu/sapi2/SapiCache;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1529
    .local v2, "data":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 1530
    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/sapi2/SapiWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    :goto_23
    return-void

    .line 1532
    :cond_24
    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiWebView;->d(Ljava/lang/String;)V

    goto :goto_23
.end method

.method public loadUserAgreement()V
    .registers 3

    .prologue
    .line 1223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->B:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/passport/agreement?adapter=3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    .line 1224
    return-void
.end method

.method public loadWeixinSSOLogin()V
    .registers 7

    .prologue
    .line 2326
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/sapi2/SapiWebView;->B:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->wxAppID:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v2

    .line 2327
    .local v2, "wxAPI":Lcom/tencent/mm/sdk/openapi/IWXAPI;
    invoke-interface {v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 2328
    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView;->M:Lcom/baidu/sapi2/SapiWebView$WeixinHandler;

    if-eqz v3, :cond_1b

    .line 2329
    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView;->M:Lcom/baidu/sapi2/SapiWebView$WeixinHandler;

    invoke-interface {v3}, Lcom/baidu/sapi2/SapiWebView$WeixinHandler;->handleNotInstall()V

    .line 2389
    :cond_1b
    :goto_1b
    return-void

    .line 2334
    :cond_1c
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiAccountService;->j()Ljava/lang/String;

    move-result-object v1

    .line 2335
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    .line 2336
    .local v0, "httpClient":Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/baidu/sapi2/SapiWebView$22;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/baidu/sapi2/SapiWebView$22;-><init>(Lcom/baidu/sapi2/SapiWebView;Landroid/os/Looper;)V

    invoke-virtual {v0, v3, v1, v4}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto :goto_1b
.end method

.method public loadXiaomiSSOLogin()V
    .registers 7

    .prologue
    .line 2456
    const/4 v2, 0x3

    new-array v0, v2, [I

    fill-array-data v0, :array_52

    .line 2458
    .local v0, "scopes":[I
    new-instance v2, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    invoke-direct {v2}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;-><init>()V

    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView;->B:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->xiaomiAppID:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setAppId(J)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView;->B:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->xiaomiRedirectUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setRedirectUrl(Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setScope([I)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v3

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v3, v2}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->startGetAccessToken(Landroid/app/Activity;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object v1

    .line 2464
    .local v1, "tokenFuture":Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;, "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture<Lcom/xiaomi/account/openauth/XiaomiOAuthResults;>;"
    new-instance v2, Lcom/baidu/sapi2/SapiWebView$24;

    invoke-direct {v2, p0, v1}, Lcom/baidu/sapi2/SapiWebView$24;-><init>(Lcom/baidu/sapi2/SapiWebView;Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;)V

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiWebView$24;->start()V

    .line 2557
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/b;->c()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 2558
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u60a8\u7684\u624b\u673a\u88ab\u6076\u610f\u8f6f\u4ef6\u7be1\u6539\uff0c\u53ef\u80fd\u65e0\u6cd5\u4f7f\u7528\u7b2c\u4e09\u65b9\u5e10\u53f7\u767b\u5f55\u767e\u5ea6\uff0c\u8bf7\u66f4\u6362\u5176\u4ed6\u767b\u5f55\u65b9\u5f0f"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2560
    :cond_51
    return-void

    .line 2456
    :array_52
    .array-data 4
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public onActivityResultData(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1588
    const/16 v0, 0x2b5d

    if-eq p1, v0, :cond_8

    const/16 v0, 0x2776

    if-ne p1, v0, :cond_d

    .line 1589
    :cond_8
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->C:Lcom/tencent/tauth/IUiListener;

    invoke-static {p1, p2, p3, v0}, Lcom/tencent/tauth/Tencent;->onActivityResultData(IILandroid/content/Intent;Lcom/tencent/tauth/IUiListener;)Z

    .line 1591
    :cond_d
    return-void
.end method

.method public onAuthorizedResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->T:Lcom/baidu/sapi2/plugin/sso/SsoHandler;

    if-eqz v0, :cond_9

    .line 1583
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->T:Lcom/baidu/sapi2/plugin/sso/SsoHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/sapi2/plugin/sso/SsoHandler;->authorizeCallBack(IILandroid/content/Intent;)V

    .line 1585
    :cond_9
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1596
    const/4 v0, 0x4

    if-ne p1, v0, :cond_11

    .line 1597
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->ai:Lcom/baidu/sapi2/SapiWebView$OnBackCallback;

    if-eqz v0, :cond_c

    .line 1598
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->ai:Lcom/baidu/sapi2/SapiWebView$OnBackCallback;

    invoke-interface {v0}, Lcom/baidu/sapi2/SapiWebView$OnBackCallback;->onBack()V

    .line 1600
    :cond_c
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiWebView;->back()V

    .line 1601
    const/4 v0, 0x1

    .line 1603
    :goto_10
    return v0

    :cond_11
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_10
.end method

.method public onScrollChanged(IIII)V
    .registers 7
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 2681
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->W:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_15

    .line 2682
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->W:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 2683
    .local v0, "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    iput p1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 2684
    iput p2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 2685
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView;->W:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2687
    .end local v0    # "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_15
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 2688
    return-void
.end method

.method public setAuthWidgetCallback(Lcom/baidu/sapi2/SapiWebView$AuthWidgetCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/baidu/sapi2/SapiWebView$AuthWidgetCallback;

    .prologue
    .line 895
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->Q:Lcom/baidu/sapi2/SapiWebView$AuthWidgetCallback;

    .line 896
    return-void
.end method

.method public setAuthorizationListener(Lcom/baidu/sapi2/shell/listener/AuthorizationListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    .prologue
    .line 799
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->D:Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    .line 800
    return-void
.end method

.method public setBindWidgetCallback(Lcom/baidu/sapi2/SapiWebView$BindWidgetCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/baidu/sapi2/SapiWebView$BindWidgetCallback;

    .prologue
    .line 904
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->R:Lcom/baidu/sapi2/SapiWebView$BindWidgetCallback;

    .line 905
    return-void
.end method

.method public setChangePwdCallback(Lcom/baidu/sapi2/SapiWebView$ChangePwdCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/baidu/sapi2/SapiWebView$ChangePwdCallback;

    .prologue
    .line 886
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->P:Lcom/baidu/sapi2/SapiWebView$ChangePwdCallback;

    .line 887
    return-void
.end method

.method public setDeviceLoginHandler(Landroid/os/Handler;)V
    .registers 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 817
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->G:Landroid/os/Handler;

    .line 818
    return-void
.end method

.method public setFastRegHandler(Lcom/baidu/sapi2/SapiWebView$FastRegHandler;)V
    .registers 2
    .param p1, "handler"    # Lcom/baidu/sapi2/SapiWebView$FastRegHandler;

    .prologue
    .line 826
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->H:Lcom/baidu/sapi2/SapiWebView$FastRegHandler;

    .line 827
    return-void
.end method

.method public setHuaweiHandler(Lcom/baidu/sapi2/SapiWebView$HuaweiHandler;)V
    .registers 2
    .param p1, "handler"    # Lcom/baidu/sapi2/SapiWebView$HuaweiHandler;

    .prologue
    .line 868
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->N:Lcom/baidu/sapi2/SapiWebView$HuaweiHandler;

    .line 869
    return-void
.end method

.method public setLcLoginHandler(Lcom/baidu/sapi2/SapiWebView$LCLoginHandler;)V
    .registers 2
    .param p1, "handler"    # Lcom/baidu/sapi2/SapiWebView$LCLoginHandler;

    .prologue
    .line 852
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->K:Lcom/baidu/sapi2/SapiWebView$LCLoginHandler;

    .line 853
    return-void
.end method

.method public setNmLoginHandler(Lcom/baidu/sapi2/SapiWebView$NMLoginHandler;)V
    .registers 2
    .param p1, "handler"    # Lcom/baidu/sapi2/SapiWebView$NMLoginHandler;

    .prologue
    .line 844
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->J:Lcom/baidu/sapi2/SapiWebView$NMLoginHandler;

    .line 845
    return-void
.end method

.method public final setNoNetworkView(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x1

    .line 288
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->U:Landroid/view/View;

    if-nez v0, :cond_17

    .line 289
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->U:Landroid/view/View;

    .line 290
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->U:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->U:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/baidu/sapi2/SapiWebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    :cond_17
    return-void
.end method

.method public setOnBackCallback(Lcom/baidu/sapi2/SapiWebView$OnBackCallback;)V
    .registers 2
    .param p1, "onBackCallback"    # Lcom/baidu/sapi2/SapiWebView$OnBackCallback;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->ai:Lcom/baidu/sapi2/SapiWebView$OnBackCallback;

    .line 262
    return-void
.end method

.method public setOnFinishCallback(Lcom/baidu/sapi2/SapiWebView$OnFinishCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/baidu/sapi2/SapiWebView$OnFinishCallback;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->ah:Lcom/baidu/sapi2/SapiWebView$OnFinishCallback;

    .line 258
    return-void
.end method

.method public setProgressBar(Landroid/widget/ProgressBar;)V
    .registers 3
    .param p1, "progressBar"    # Landroid/widget/ProgressBar;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->W:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_5

    .line 323
    :cond_4
    :goto_4
    return-void

    .line 319
    :cond_5
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->W:Landroid/widget/ProgressBar;

    .line 320
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->W:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_4

    .line 321
    invoke-virtual {p0, p1}, Lcom/baidu/sapi2/SapiWebView;->addView(Landroid/view/View;)V

    goto :goto_4
.end method

.method public setQrAppLoginHandler(Landroid/os/Handler;)V
    .registers 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 808
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->F:Landroid/os/Handler;

    .line 809
    return-void
.end method

.method public setSocialLoginHandler(Landroid/os/Handler;)V
    .registers 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 922
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->E:Landroid/os/Handler;

    .line 923
    return-void
.end method

.method public setTimeoutMillis(J)V
    .registers 4
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 1515
    iput-wide p1, p0, Lcom/baidu/sapi2/SapiWebView;->ab:J

    .line 1516
    return-void
.end method

.method public final setTimeoutView(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x1

    .line 303
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->V:Landroid/view/View;

    if-nez v0, :cond_17

    .line 304
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->V:Landroid/view/View;

    .line 305
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->V:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView;->V:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/baidu/sapi2/SapiWebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    :cond_17
    return-void
.end method

.method public setUniteVerifyCallback(Lcom/baidu/sapi2/SapiWebView$UniteVerifyCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/baidu/sapi2/SapiWebView$UniteVerifyCallback;

    .prologue
    .line 913
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->S:Lcom/baidu/sapi2/SapiWebView$UniteVerifyCallback;

    .line 914
    return-void
.end method

.method public setUniteVerifyHandler(Lcom/baidu/sapi2/SapiWebView$UniteVerifyHandler;)V
    .registers 2
    .param p1, "handler"    # Lcom/baidu/sapi2/SapiWebView$UniteVerifyHandler;

    .prologue
    .line 877
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->L:Lcom/baidu/sapi2/SapiWebView$UniteVerifyHandler;

    .line 878
    return-void
.end method

.method public setVoiceLoginHandler(Lcom/baidu/sapi2/SapiWebView$VoiceLoginHandler;)V
    .registers 2
    .param p1, "handler"    # Lcom/baidu/sapi2/SapiWebView$VoiceLoginHandler;

    .prologue
    .line 835
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->I:Lcom/baidu/sapi2/SapiWebView$VoiceLoginHandler;

    .line 836
    return-void
.end method

.method public setWeixinHandler(Lcom/baidu/sapi2/SapiWebView$WeixinHandler;)V
    .registers 2
    .param p1, "handler"    # Lcom/baidu/sapi2/SapiWebView$WeixinHandler;

    .prologue
    .line 860
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView;->M:Lcom/baidu/sapi2/SapiWebView$WeixinHandler;

    .line 861
    return-void
.end method

.method public stopLoading()V
    .registers 2

    .prologue
    .line 3377
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3} :catch_4

    .line 3382
    :goto_3
    return-void

    .line 3378
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public weixinSSOLogin(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    .line 2564
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2565
    :cond_c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 2568
    :cond_12
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/baidu/sapi2/SapiAccountService;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2569
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2570
    .local v0, "cookie":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mkey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";domain=."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/sapi2/SapiWebView;->B:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v4}, Lcom/baidu/sapi2/utils/enums/Domain;->getURL()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "https://"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "(:[0-9]{1,4})?"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";path=/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2576
    .local v1, "mkeyCookie":Ljava/lang/String;
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v4, p0, Lcom/baidu/sapi2/SapiWebView;->B:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v4}, Lcom/baidu/sapi2/utils/enums/Domain;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2577
    invoke-virtual {p0, v2, v0}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;Ljava/util/List;)V

    .line 2578
    return-void
.end method
