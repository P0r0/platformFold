.class public Lcom/ta/utdid2/device/UTDevice;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUtdid(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 18
    invoke-static {p0}, Lcom/ta/utdid2/device/DeviceInfo;->getDevice(Landroid/content/Context;)Lcom/ta/utdid2/device/Device;

    move-result-object v0

    .line 19
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/ta/utdid2/device/Device;->getUtdid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_10
    const-string v0, "ffffffffffffffffffffffff"

    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {v0}, Lcom/ta/utdid2/device/Device;->getUtdid()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method
