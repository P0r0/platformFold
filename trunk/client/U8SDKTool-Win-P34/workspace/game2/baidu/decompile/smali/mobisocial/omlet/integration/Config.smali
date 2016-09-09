.class public Lmobisocial/omlet/integration/Config;
.super Ljava/lang/Object;
.source "Config.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 25
    const-string v0, "omlet.nopush"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 26
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 27
    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 14
    const-string v0, "omlet.apikey"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 15
    const-string v0, "00109d192c4b73065406ea2fd7d3f2e663fa0005fba5282d26"

    .line 20
    :goto_a
    return-object v0

    .line 16
    :cond_b
    const-string v0, "omlet.secret"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 17
    const-string v0, "8ba92a7c64310dc8fbd60f7b95f2d79255797f79672bc68d8d990e1cdfbe1a73"

    goto :goto_a

    .line 18
    :cond_16
    const-string v0, "omlet.server"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 19
    const-string v0, "prod"

    goto :goto_a

    .line 20
    :cond_21
    const/4 v0, 0x0

    goto :goto_a
.end method
