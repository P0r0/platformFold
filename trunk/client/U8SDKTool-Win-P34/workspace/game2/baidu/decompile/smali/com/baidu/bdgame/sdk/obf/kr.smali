.class public final Lcom/baidu/bdgame/sdk/obf/kr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false

.field public static b:Lcom/baidu/platformsdk/BDPlatformSetting$Domain; = null

.field public static final c:Z = false

.field public static final d:Ljava/lang/String; = "3.7.1"

.field public static final e:I = 0x0

.field public static f:I = 0x0

.field public static final g:Ljava/util/Locale;

.field public static h:Ljava/lang/String; = null

.field public static i:Ljava/lang/String; = null

.field public static j:Ljava/lang/String; = null

.field public static final k:Ljava/lang/String; = "http://sdkapi.baidu.com/game/call"

.field public static l:Ljava/lang/String; = null

.field public static final m:Ljava/lang/String; = "http://sdkapi.baidu.com/game/call"

.field public static final n:Ljava/lang/String; = "http://sdkpay.baidu.com/cash/call"

.field public static volatile o:Ljava/lang/String;

.field public static volatile p:Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static r:Ljava/lang/String;

.field public static s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 14
    sput-boolean v1, Lcom/baidu/bdgame/sdk/obf/kr;->a:Z

    .line 16
    sget-object v0, Lcom/baidu/platformsdk/BDPlatformSetting$Domain;->DOMAIN_ONLINE:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/kr;->b:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    .line 25
    sput v1, Lcom/baidu/bdgame/sdk/obf/kr;->f:I

    .line 27
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/kr;->g:Ljava/util/Locale;

    .line 42
    const-string v0, "http://useractionsdkapi.baidu.com/useraction/call"

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/kr;->l:Ljava/lang/String;

    .line 76
    const-string v0, "http://sdkapi.baidu.com/game/call"

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/kr;->o:Ljava/lang/String;

    .line 77
    const-string v0, "http://sdkapi.baidu.com/game/call"

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/kr;->p:Ljava/lang/String;

    .line 81
    const-string v0, "http://wappass.baidu.com/wp/wappassword?adapter=3&skin="

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/kr;->q:Ljava/lang/String;

    .line 83
    const-string v0, "http://wappass.baidu.com/wp/security?adapter=3&skin="

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/kr;->r:Ljava/lang/String;

    .line 87
    const-string v0, "http://mpay.91.com/storemobile/SDKV3/PayPwd/reSet.shtml?AccessToken="

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/kr;->s:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static a()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 95
    sget-object v0, Lcom/baidu/platformsdk/BDPlatformSetting$Domain;->DOMAIN_ONLINE:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/kr;->b:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    .line 96
    const/4 v0, 0x0

    sput v0, Lcom/baidu/bdgame/sdk/obf/kr;->f:I

    .line 97
    sput-object v1, Lcom/baidu/bdgame/sdk/obf/kr;->h:Ljava/lang/String;

    .line 98
    sput-object v1, Lcom/baidu/bdgame/sdk/obf/kr;->i:Ljava/lang/String;

    .line 99
    sput-object v1, Lcom/baidu/bdgame/sdk/obf/kr;->j:Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kr;->b()V

    .line 103
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 111
    sput-object p0, Lcom/baidu/bdgame/sdk/obf/kr;->o:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public static a(Z)V
    .registers 2

    .prologue
    .line 115
    if-eqz p0, :cond_7

    .line 116
    const-string v0, "http://sdkpay.baidu.com/cash/call"

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/kr;->p:Ljava/lang/String;

    .line 120
    :goto_6
    return-void

    .line 118
    :cond_7
    const-string v0, "http://sdkapi.baidu.com/game/call"

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/kr;->p:Ljava/lang/String;

    goto :goto_6
.end method

.method public static b()V
    .registers 1

    .prologue
    .line 106
    const-string v0, "http://sdkapi.baidu.com/game/call"

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/kr;->o:Ljava/lang/String;

    .line 107
    const-string v0, "http://sdkapi.baidu.com/game/call"

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/kr;->p:Ljava/lang/String;

    .line 108
    return-void
.end method
