.class public Lcom/bbkmobile/iqoo/payment/util/AccountEventInfoDbHelper$AccountInfo;
.super Ljava/lang/Object;


# static fields
.field public static final AUTOHORITY:Ljava/lang/String; = "com.vivo.unionsdk.paymentinfo"

.field public static final CONTENT_ID_URI_BASE:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id DESC"

.field public static final KEY_ACCOUNT_ID:Ljava/lang/String; = "id"

.field public static final KEY_EMAIL:Ljava/lang/String; = "email"

.field public static final KEY_EVENT_ID:Ljava/lang/String; = "eventid"

.field public static final KEY_FROM:Ljava/lang/String; = "pacakgefrom"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_MIEI:Ljava/lang/String; = "imei"

.field public static final KEY_MODEL:Ljava/lang/String; = "model"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_OPEN_ID:Ljava/lang/String; = "openid"

.field public static final KEY_PARAM:Ljava/lang/String; = "param"

.field public static final KEY_PHONENUM:Ljava/lang/String; = "phonenum"

.field public static final KEY_PWD:Ljava/lang/String; = "pwd"

.field public static final KEY_TIME:Ljava/lang/String; = "time"

.field public static final KEY_UUID:Ljava/lang/String; = "uuid"

.field public static final KEY_VERCODE:Ljava/lang/String; = "vercode"

.field public static final KEY_VIVOTOKEN:Ljava/lang/String; = "vivoToken"

.field public static final PATH_ACCOUNT_INFO:Ljava/lang/String; = "/accountinfo"

.field public static final PATH_ACCOUNT_INFO_ID:Ljava/lang/String; = "/accountinfo/"

.field public static final PATH_SDKACCOUNT_INFO:Ljava/lang/String; = "/sdkaccountinfo/"

.field public static final PATH_SDKEVENT_ACCOUNT_INFO:Ljava/lang/String; = "/sdkeventinfo/"

.field public static final SDKEVENT_CONTENT_ID_URI_BASE:Landroid/net/Uri;

.field public static final SDK_CONTENT_ID_URI_BASE:Landroid/net/Uri;

.field public static final TABLE_ACCOUNT_INFO:Ljava/lang/String; = "accountinfo"

.field public static final TABLE_SDKACCOUNT_EVENTINFO:Ljava/lang/String; = "sdkeventinfo"

.field public static final TABLE_SDKACCOUNT_INFO:Ljava/lang/String; = "sdkaccountinfo"

.field public static final TAG_RETRIEVED_INFO:Ljava/lang/String; = "retrievedinfo"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.vivo.unionsdk.paymentinfo/sdkeventinfo/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/bbkmobile/iqoo/payment/util/AccountEventInfoDbHelper$AccountInfo;->SDKEVENT_CONTENT_ID_URI_BASE:Landroid/net/Uri;

    const-string v0, "content://com.vivo.unionsdk.paymentinfo/sdkaccountinfo/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/bbkmobile/iqoo/payment/util/AccountEventInfoDbHelper$AccountInfo;->SDK_CONTENT_ID_URI_BASE:Landroid/net/Uri;

    const-string v0, "content://com.vivo.unionsdk.paymentinfo/accountinfo/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/bbkmobile/iqoo/payment/util/AccountEventInfoDbHelper$AccountInfo;->CONTENT_ID_URI_BASE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
