.class public Lcom/u8/sdk/plugin/U8Advertising;
.super Ljava/lang/Object;
.source "U8Advertising.java"


# static fields
.field private static instance:Lcom/u8/sdk/plugin/U8Advertising;


# instance fields
.field private adPlugin:Lcom/u8/sdk/IAdvertising;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/u8/sdk/plugin/U8Advertising;
    .locals 1

    sget-object v0, Lcom/u8/sdk/plugin/U8Advertising;->instance:Lcom/u8/sdk/plugin/U8Advertising;

    if-nez v0, :cond_0

    new-instance v0, Lcom/u8/sdk/plugin/U8Advertising;

    invoke-direct {v0}, Lcom/u8/sdk/plugin/U8Advertising;-><init>()V

    sput-object v0, Lcom/u8/sdk/plugin/U8Advertising;->instance:Lcom/u8/sdk/plugin/U8Advertising;

    :cond_0
    sget-object v0, Lcom/u8/sdk/plugin/U8Advertising;->instance:Lcom/u8/sdk/plugin/U8Advertising;

    return-object v0
.end method


# virtual methods
.method public bannerAd()V
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Advertising;->adPlugin:Lcom/u8/sdk/IAdvertising;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Advertising;->adPlugin:Lcom/u8/sdk/IAdvertising;

    invoke-interface {v0}, Lcom/u8/sdk/IAdvertising;->showBannerAd()V

    goto :goto_0
.end method

.method public init()V
    .locals 3

    invoke-static {}, Lcom/u8/sdk/PluginFactory;->getInstance()Lcom/u8/sdk/PluginFactory;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/u8/sdk/PluginFactory;->initPlugin(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/IAdvertising;

    iput-object v0, p0, Lcom/u8/sdk/plugin/U8Advertising;->adPlugin:Lcom/u8/sdk/IAdvertising;

    const-string v0, "Advert"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init ad:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/u8/sdk/plugin/U8Advertising;->adPlugin:Lcom/u8/sdk/IAdvertising;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public interstitialAd()V
    .locals 3

    const-string v0, "AD"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showInterstitialAd Called"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/u8/sdk/plugin/U8Advertising;->adPlugin:Lcom/u8/sdk/IAdvertising;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Advertising;->adPlugin:Lcom/u8/sdk/IAdvertising;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Advertising;->adPlugin:Lcom/u8/sdk/IAdvertising;

    invoke-interface {v0}, Lcom/u8/sdk/IAdvertising;->showInterstitialAd()V

    goto :goto_0
.end method

.method public isSupport(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Advertising;->adPlugin:Lcom/u8/sdk/IAdvertising;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Advertising;->adPlugin:Lcom/u8/sdk/IAdvertising;

    invoke-interface {v0, p1}, Lcom/u8/sdk/IAdvertising;->isSupportMethod(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
