.class public Lmobisocial/longdan/LDProtocols$LDAppInfoUserMutable;
.super Lmobisocial/longdan/LDProtocols$LDItemInfoUserMutable;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDAppInfoUserMutable"
.end annotation


# instance fields
.field public AndroidDrawer:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "adr"
    .end annotation
.end field

.field public AndroidEditor:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aed"
    .end annotation
.end field

.field public AndroidEnabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ae"
    .end annotation
.end field

.field public AndroidGame:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aga"
    .end annotation
.end field

.field public AndroidPackageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "apn"
    .end annotation
.end field

.field public AndroidPackageSigningKeySha256s:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "apsks"
    .end annotation
.end field

.field public AndroidStoreUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sua"
    .end annotation
.end field

.field public AppStoresList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "asl"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDAppStore;",
            ">;"
        }
    .end annotation
.end field

.field public Description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "d"
    .end annotation
.end field

.field public DescriptionTranslations:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dt"
    .end annotation
.end field

.field public IOSCallback:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icb"
    .end annotation
.end field

.field public IOSDrawer:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "idr"
    .end annotation
.end field

.field public IOSEditor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ied"
    .end annotation
.end field

.field public IOSEnabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ie"
    .end annotation
.end field

.field public IOSGame:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "iga"
    .end annotation
.end field

.field public IOSStoreUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sui"
    .end annotation
.end field

.field public IconBlobLinkString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ibls"
    .end annotation
.end field

.field public Languages:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lc"
    .end annotation
.end field

.field public Name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "n"
    .end annotation
.end field

.field public NameTranslations:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nt"
    .end annotation
.end field

.field public RedirectUris:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ru"
    .end annotation
.end field

.field public ScreenShotsList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ssl"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDAppScreenshot;",
            ">;"
        }
    .end annotation
.end field

.field public UserCardAssetCardBackground:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ucacbg"
    .end annotation
.end field

.field public UserCardAssetDefaultProfile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ucadp"
    .end annotation
.end field

.field public UserCardAssetMobilePortraitHeader:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ucamph"
    .end annotation
.end field

.field public UserCardAssetProfileForeground:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ucapfg"
    .end annotation
.end field

.field public UserCardDefaultMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ucdm"
    .end annotation
.end field

.field public UserCardDomain:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ucd"
    .end annotation
.end field

.field public UserCardFullIOSAppId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ucfiai"
    .end annotation
.end field

.field public UserCardIOSAppStoreId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uciasi"
    .end annotation
.end field

.field public UserCardIOSLinkScheme:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ucils"
    .end annotation
.end field

.field public UserCardShareDescriptionTemplate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ucsdt"
    .end annotation
.end field

.field public UserCardShareTitleTemplate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ucstt"
    .end annotation
.end field

.field public UserCardTemplate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uctpl"
    .end annotation
.end field

.field public VideoPostDomain:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vpd"
    .end annotation
.end field

.field public VideoPostReportUri:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vpru"
    .end annotation
.end field

.field public WebDrawer:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wdr"
    .end annotation
.end field

.field public WebEditor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wed"
    .end annotation
.end field

.field public WebEnabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "we"
    .end annotation
.end field

.field public WebGame:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wga"
    .end annotation
.end field

.field public WebUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "suw"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4182
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDItemInfoUserMutable;-><init>()V

    return-void
.end method
