.class public Lcom/gionee/gsp/service/pay/PayImpl;
.super Ljava/lang/Object;
.source "PayImpl.java"

# interfaces
.implements Lcom/gionee/gsp/service/pay/IPay;


# static fields
.field private static sInstance:Lcom/gionee/gsp/service/pay/PayImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    new-instance v0, Lcom/gionee/gsp/service/pay/PayImpl;

    invoke-direct {v0}, Lcom/gionee/gsp/service/pay/PayImpl;-><init>()V

    sput-object v0, Lcom/gionee/gsp/service/pay/PayImpl;->sInstance:Lcom/gionee/gsp/service/pay/PayImpl;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/gionee/gsp/service/pay/IPay;
    .registers 2

    .prologue
    .line 26
    const-class v0, Lcom/gionee/gsp/service/pay/PayImpl;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/gionee/gsp/service/pay/PayImpl;->sInstance:Lcom/gionee/gsp/service/pay/PayImpl;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public pay(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/gionee/pay/gsp/PayCallback;I)V
    .registers 13
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orderInfo"    # Ljava/lang/String;
    .param p3, "BundlePara"    # Landroid/os/Bundle;
    .param p4, "payCallBack"    # Lcom/gionee/pay/gsp/PayCallback;
    .param p5, "type"    # I

    .prologue
    .line 35
    sget-object v0, Lcom/gionee/gsp/service/pay/PayImpl;->sGNPayUtil:Lcom/gionee/pay/util/GNPayUtil;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/gionee/pay/util/GNPayUtil;->pay(Landroid/app/Activity;Ljava/lang/String;Lcom/gionee/pay/gsp/PayCallback;ILandroid/graphics/Bitmap;Landroid/os/Bundle;)V

    .line 36
    return-void
.end method

.method public pay(Landroid/app/Activity;Ljava/lang/String;Lcom/gionee/pay/gsp/PayCallback;I)V
    .registers 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orderInfo"    # Ljava/lang/String;
    .param p3, "payCallBack"    # Lcom/gionee/pay/gsp/PayCallback;
    .param p4, "type"    # I

    .prologue
    .line 31
    sget-object v0, Lcom/gionee/gsp/service/pay/PayImpl;->sGNPayUtil:Lcom/gionee/pay/util/GNPayUtil;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/gionee/pay/util/GNPayUtil;->pay(Landroid/app/Activity;Ljava/lang/String;Lcom/gionee/pay/gsp/PayCallback;ILandroid/graphics/Bitmap;)V

    .line 32
    return-void
.end method

.method public pay(Landroid/app/Activity;Ljava/lang/String;Lcom/gionee/pay/gsp/PayCallback;ILandroid/graphics/Bitmap;)V
    .registers 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orderInfo"    # Ljava/lang/String;
    .param p3, "payCallBack"    # Lcom/gionee/pay/gsp/PayCallback;
    .param p4, "type"    # I
    .param p5, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 40
    sget-object v0, Lcom/gionee/gsp/service/pay/PayImpl;->sGNPayUtil:Lcom/gionee/pay/util/GNPayUtil;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/gionee/pay/util/GNPayUtil;->pay(Landroid/app/Activity;Ljava/lang/String;Lcom/gionee/pay/gsp/PayCallback;ILandroid/graphics/Bitmap;)V

    .line 41
    return-void
.end method
