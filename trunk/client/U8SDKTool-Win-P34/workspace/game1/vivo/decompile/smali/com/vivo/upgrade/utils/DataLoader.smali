.class public Lcom/vivo/upgrade/utils/DataLoader;
.super Ljava/lang/Object;
.source "DataLoader.java"


# static fields
.field public static final ANDROID_NAME:Ljava/lang/String; = "an"

.field public static final ANDROID_VER:Ljava/lang/String; = "av"

.field public static final APP_VERSION_CODE:Ljava/lang/String; = "app_version"

.field public static final CHECK_APP_UPDATE_URL:Ljava/lang/String;

.field public static final CHECK_SYSTEM_UPDATE_URL:Ljava/lang/String; = "http://sysupgrade.vivo.com.cn/checkapp/query"

.field public static final CLICK_APP_FROM:Ljava/lang/String; = "cfrom"

.field private static final DEBUG:Z = false

.field public static final ELAPSED_TIME_TAG:Ljava/lang/String; = "elapsedtime"

.field public static final E_ID_TAG:Ljava/lang/String; = "e"

.field public static final JAR_VER:Ljava/lang/String; = "upJarVer"

.field public static final MIEI_CODE_TAG:Ljava/lang/String; = "imei"

.field public static final MODEL_NUMBER_TAG:Ljava/lang/String; = "model"

.field public static final PARAM_CHECK_BY_USER:Ljava/lang/String; = "manual"

.field public static final PARAM_NETWORK_TYPE:Ljava/lang/String; = "nt"

.field public static final PARAM_NET_STATE_CLASS_1:Ljava/lang/String; = "net_state_class_1"

.field public static final PARAM_NET_STATE_CLASS_2:Ljava/lang/String; = "net_state_class_2"

.field public static final PARAM_PIC_WEBP:Ljava/lang/String; = "webp"

.field public static final PARAM_SIM_COUNT:Ljava/lang/String; = "sf"

.field public static final PARAM_SIM_MODE1:Ljava/lang/String; = "sm1"

.field public static final PARAM_SIM_MODE2:Ljava/lang/String; = "sm2"

.field public static final PARAM_SIM_NAME1:Ljava/lang/String; = "sn1"

.field public static final PARAM_SIM_NAME2:Ljava/lang/String; = "sn2"

.field public static final PARAM_SIM_NETCLASS_1:Ljava/lang/String; = "srm1"

.field public static final PARAM_SIM_NETCLASS_2:Ljava/lang/String; = "srm2"

.field public static final PARAM_SIM_STATE:Ljava/lang/String; = "sim_state"

.field public static final PARAM_SIM_TIME1:Ljava/lang/String; = "st1"

.field public static final PARAM_SIM_TIME2:Ljava/lang/String; = "st2"

.field public static final PARAM_SIM_TYPE_1:Ljava/lang/String; = "sim_type_1"

.field public static final PARAM_SIM_TYPE_2:Ljava/lang/String; = "sim_type_2"

.field public static final PIC_TYPE:Ljava/lang/String; = "pictype"

.field public static final REQUEST_SOURCE_TAG:Ljava/lang/String; = "cs"

.field public static final SCREEN_DENSITY:Ljava/lang/String; = "density"

.field public static final SCREEN_SIZE:Ljava/lang/String; = "screensize"

.field public static SELF_UPDATE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 8
    const-string v0, "http://comm.inner.bbk.com/"

    sput-object v0, Lcom/vivo/upgrade/utils/DataLoader;->SELF_UPDATE:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/vivo/upgrade/utils/DataLoader;->SELF_UPDATE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    const-string v1, "upapk/apk/query"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/upgrade/utils/DataLoader;->CHECK_APP_UPDATE_URL:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
